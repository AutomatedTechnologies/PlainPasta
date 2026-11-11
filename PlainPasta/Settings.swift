// Created by Isaac Halvorson on 10/29/20

import Foundation

struct Settings {
	/// Sets whether debug mode is enabled
	private static var _debugEnabled = UserDefaultsBacked<Bool>(key: "debugEnabled", defaultValue: false)
	static var debugEnabled: Bool {
		get {
			return _debugEnabled.wrappedValue
		}
		set {
			_debugEnabled.wrappedValue = newValue
		}
	}

	/// Sets whether pasteboard filtering is enabled
	private static var _filteringEnabled = UserDefaultsBacked<Bool>(key: "filteringEnabled", defaultValue: false)
	static var filteringEnabled: Bool {
		get {
			return _filteringEnabled.wrappedValue
		}
		set {
			_filteringEnabled.wrappedValue = newValue
		}
	}

	/// Tracks if this is the first time the app has been launched
	private static var _firstLaunch = UserDefaultsBacked<Bool>(key: "firstLaunch", defaultValue: true)
	static var firstLaunch: Bool {
		get {
			return _firstLaunch.wrappedValue
		}
		set {
			_firstLaunch.wrappedValue = newValue
		}
	}
}
