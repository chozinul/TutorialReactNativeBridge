import { NativeModules, NativeEventEmitter } from 'react-native'

class Counter extends NativeEventEmitter {
  constructor(nativeModule) {
    super(nativeModule);
    this.initialCount = nativeModule.initialCount
    this.getCount = nativeModule.getCount
    this.increment = nativeModule.increment
    this.incrementEmit = async function() {
        try {
          const res = await nativeModule.incrementEmit()
          console.log(res)
        } catch(e) {
          console.log(e.message, e.code)
        }
      }
    this.decrement = async function() {
      try {
        const res = await nativeModule.decrement()
        console.log(res)
      } catch(e) {
        console.log(e.message, e.code)
      }
    }
  }

}

export default new Counter(NativeModules.Counter)