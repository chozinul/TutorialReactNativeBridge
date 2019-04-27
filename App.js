/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, {Component} from 'react';
import {
  StyleSheet, 
  Text, 
  View, 
  TouchableOpacity
} from 'react-native';

import CounterView from './component/CounterView'

export default class App extends Component {
  
  state = {
    countTop: 0,
    countBottom: 10
  };

  incrementTop = (count) => {
    this.setState({ countTop: count + 1 })
  }

  render() {
    return (
      <View style={styles.container}>
        
        <TouchableOpacity
          style={[styles.wrapper, styles.border]}
          onPress={() => this.incrementTop(this.state.countTop)}
        >
          <Text style={styles.button}>
            {this.state.countTop}
          </Text>
        </TouchableOpacity>

        <CounterView initialCount={this.state.countBottom} > </CounterView>

      </View>
    );
  }

}

const styles = StyleSheet.create({
  container: {
    flex: 1, alignItems: "stretch"
  },
  wrapper: {
    flex: 1, alignItems: "center", justifyContent: "center"
  },
  border: {
    borderColor: "#eee", borderBottomWidth: 1
  },
  button: {
    fontSize: 50, color: "orange"
  }
});
