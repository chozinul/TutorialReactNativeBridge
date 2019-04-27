import React, { Component } from 'react';
import {
    StyleSheet,
    requireNativeComponent,
    UIManager,
    findNodeHandle
} from 'react-native';



const NativeCounterView = requireNativeComponent("CounterView")

export default class CounterView extends Component {
    
    updateNative = (count) => {
        UIManager.dispatchViewManagerCommand(
            findNodeHandle(this.counterRef),
            UIManager.getViewManagerConfig("CounterView").Commands.updateFromManager,
            [count]
        );
    }

    onClick = e => {
        const count = e.nativeEvent.count + 1
        this.updateNative(count)
    }

    render() {
        return (
            <NativeCounterView
                style={styles.wrapper}
                count={this.props.initialCount}
                onClick={this.onClick}
                ref={e => this.counterRef = e}
            />
        );
    }
}

const styles = StyleSheet.create({
    wrapper: {
        flex: 1, alignItems: "center", justifyContent: "center"
    }
});