//
//  GroupMembersConfiguration.swift
 
//
//  Created by Pushpsen Airekar on 29/09/22.
//

import Foundation
import UIKit
import CometChatSDK

public class GroupMembersConfiguration {
    
    
    // MARK:- ListBase.
    private(set) var menus: [UIBarButtonItem]?
    private(set) var hideSeparator: Bool?
    private(set) var searchPlaceholder: String?
    private(set) var backButton: UIImage?
    private(set) var showBackButton: Bool?
    private(set) var selectionMode: SelectionMode?
    private(set) var searchBoxIcon: UIImage?
    private(set) var hideSearch: Bool?
    private(set) var emptyStateView: UIView?
    private(set) var errorStateView: UIView?
    private(set) var subtitleView: ((_ groupMember: GroupMember?) -> UIView)?
    private(set) var disableUsersPresence: Bool?
    private(set) var listItemView: ((_ groupMember: GroupMember?) -> UIView)?
    private(set) var options: ((_ group: Group,_ groupMember: GroupMember?) -> [CometChatGroupMemberOption])?
    private(set) var onSelection : (([GroupMember]?) -> ())?
    private(set) var unbanIcon: UIImage?
    private(set) var tailView: ((GroupMember?) -> UIView)?
    private(set) var onItemLongClick: ((_ groupMember: GroupMember, _ indexPath: IndexPath) -> Void)?
    private(set) var onItemClick: ((_ groupMember: GroupMember, _ indexPath: IndexPath) -> Void)?
    private(set) var onError: ((CometChatException) -> Void)?
    private(set) var onBack: (() -> Void)?
    private(set) var statusIndicatorStyle: StatusIndicatorStyle?
    private(set) var avatarStyle: AvatarStyle?
    private(set) var listItemStyle: ListItemStyle?
    private(set) var groupMembersStyle: GroupMembersStyle?
    private(set) var groupMemberRequestBuilder: GroupMembersRequest.GroupMembersRequestBuilder?
    private(set) var groupMemberSearchRequestBuilder: GroupMembersRequest.GroupMembersRequestBuilder?
    private(set) var emptyStateText: String?
    private(set) var errorStateText: String?
    private(set) var title: String?
    private(set) var titleMode: UINavigationItem.LargeTitleDisplayMode = .automatic
    
    
    public init() {}
    
    @discardableResult
    public func set(title: String, mode: UINavigationItem.LargeTitleDisplayMode) -> Self {
        self.title = title
        self.titleMode = mode
        return self
    }
 
    @discardableResult
    public func set(emptyStateText: String) -> Self {
        self.emptyStateText = emptyStateText
        return self
    }
    @discardableResult
    public func set(errorStateText: String) -> Self {
        self.errorStateText = errorStateText
        return self
    }
    
    @discardableResult
    public func setSubtitleView(subtitleView: @escaping ((_ groupMember: GroupMember?) -> UIView)) -> Self {
        self.subtitleView = subtitleView
        return self
    }
    
    @discardableResult
    public func disable(usersPresence: Bool) -> Self {
        self.disableUsersPresence = usersPresence
        return self
    }
    
    @discardableResult
    public func setListItemView(listItemView: @escaping ((_ groupMember: GroupMember?) -> UIView)) -> Self {
        self.listItemView = listItemView
        return self
    }
    
    @discardableResult
    public func set(menus: [UIBarButtonItem]) -> Self {
        self.menus = menus
        return self
    }
    
    @discardableResult
    public func setOptions(options: @escaping (_ group: Group,_ groupMember: GroupMember?) -> [CometChatGroupMemberOption]) -> Self {
        self.options = options
        return self
    }
    
    @discardableResult
    public func hide(separator: Bool) -> Self {
        self.hideSeparator = separator
        return self
    }
    
    @discardableResult
    public func set(searchPlaceholder: String) -> Self {
        self.searchPlaceholder = searchPlaceholder
        return self
    }
    
    @discardableResult
    public func set(backButton: UIImage) -> Self {
        self.backButton = backButton
        return self
    }
    
    @discardableResult
    public func show(backButton: Bool) -> Self {
        self.showBackButton = backButton
        return self
    }
    
    @discardableResult
    public func set(selectionMode: SelectionMode) -> Self {
        self.selectionMode = selectionMode
        return self
    }
    
    @discardableResult
    public func setOnSelection(onSelection: @escaping (([GroupMember]?) -> ())) -> Self {
        self.onSelection = onSelection
        return self
    }
    
    @discardableResult
    public func set(searchBoxIcon: UIImage) -> Self {
        self.searchBoxIcon = searchBoxIcon
        return self
    }
    
    @discardableResult
    public func hide(search: Bool) -> Self {
        self.hideSearch = search
        return self
    }
    
    @discardableResult
    public func set(emptyStateView: UIView) -> Self {
        self.emptyStateView = emptyStateView
        return self
    }
    
    @discardableResult
    public func set(errorStateView: UIView) -> Self {
        self.errorStateView = errorStateView
        return self
    }
    
    @discardableResult
    public func set(unbanIcon: UIImage) -> Self {
        self.unbanIcon = unbanIcon
        return self
    }
    
    @discardableResult
    public func setTailView(tailView: @escaping ((GroupMember?) -> UIView)) -> Self {
        self.tailView = tailView
        return self
    }
    
    @discardableResult
    public func setOnItemLongClick(onItemLongClick: @escaping ((_ groupMember: GroupMember, _ indexPath: IndexPath) -> Void)) -> Self {
        self.onItemLongClick = onItemLongClick
        return self
    }
    
    @discardableResult
    public func setOnItemClick(onItemClick: @escaping ((_ groupMember: GroupMember, _ indexPath: IndexPath) -> Void)) -> Self {
        self.onItemClick = onItemClick
        return self
    }
    
    @discardableResult
    public func setOnError(onError: @escaping ((CometChatException) -> Void)) -> Self {
        self.onError = onError
        return self
    }
    
    @discardableResult
    public func setOnBack(onBack: @escaping (() -> Void)) -> Self {
        self.onBack = onBack
        return self
    }
    
    @discardableResult
    public func set(statusIndicatorStyle: StatusIndicatorStyle) -> Self {
        self.statusIndicatorStyle = statusIndicatorStyle
        return self
    }
    
    @discardableResult
    public func set(groupMembersStyle: GroupMembersStyle) -> Self {
        self.groupMembersStyle = groupMembersStyle
        return self
    }
    
    @discardableResult
    public func set(listItemStyle: ListItemStyle) -> Self {
        self.listItemStyle = listItemStyle
        return self
    }
    
    @discardableResult
    public func set(avatarStyle: AvatarStyle) -> Self {
        self.avatarStyle = avatarStyle
        return self
    }
    
    @discardableResult
    public func set(groupMemberRequestBuilder: GroupMembersRequest.GroupMembersRequestBuilder) -> Self {
        self.groupMemberRequestBuilder = groupMemberRequestBuilder
        return self
    }
    
    @discardableResult
    public func set(groupMemberSearchRequestBuilder: GroupMembersRequest.GroupMembersRequestBuilder) -> Self {
        self.groupMemberSearchRequestBuilder = groupMemberSearchRequestBuilder
        return self
    }
}
