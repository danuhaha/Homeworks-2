//
//  ProfileViewController + PostsDataSource.swift
//  VKClient
//
//  Created by danuhaha on 30.10.2021.
//

import UIKit

extension ProfileViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postsArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierNewsCell, for: indexPath) as? NewsCell else { return UITableViewCell() }

        cell.configure(post: postsArray[indexPath.row])

        return cell
    }


}
