// Code generated by mockery v0.0.0-dev. DO NOT EDIT.

package mocks

import mock "github.com/stretchr/testify/mock"

// Greeter is an autogenerated mock type for the Greeter type
type Greeter struct {
	mock.Mock
}

// Greet provides a mock function with given fields: person, message
func (_m *Greeter) Greet(person string, message string) error {
	ret := _m.Called(person, message)

	var r0 error
	if rf, ok := ret.Get(0).(func(string, string) error); ok {
		r0 = rf(person, message)
	} else {
		r0 = ret.Error(0)
	}

	return r0
}
