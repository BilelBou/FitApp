import HealthKit

class HomeViewModel: ObservableObject {
    var healthStore = HKHealthStore()
    @Published var steps: Double = 0
    
    func fetchSteps() {
        if HKHealthStore.isHealthDataAvailable() {
            let readData = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)!
            healthStore.requestAuthorization(toShare: [readData], read: [readData]) { success, error in
                if success {
                    self.getTodaysSteps()
                } else {
                    print("No auth")
                }
            }
        } else {
            print("No data")
        }
    }
    
    func getTodaysSteps() {
        let stepsQuantityType = HKQuantityType.quantityType(forIdentifier: .stepCount)!
        
        let now = Date()
        let startOfDay = Calendar.current.startOfDay(for: now)
        let predicate = HKQuery.predicateForSamples(
            withStart: startOfDay,
            end: now,
            options: .strictStartDate
        )
        
        let query = HKStatisticsQuery(
            quantityType: stepsQuantityType,
            quantitySamplePredicate: predicate,
            options: .cumulativeSum
        ) { _, result, _ in
            guard let result = result, let sum = result.sumQuantity() else {
                return
            }
            DispatchQueue.main.async {
                self.steps = sum.doubleValue(for: HKUnit.count())
            }
        }
        
        healthStore.execute(query)
    }

}
