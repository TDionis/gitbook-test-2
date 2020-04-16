# Members

A user in a particular team is called "member". Every user can be a member of one, many or even zero teams, but a team cannot exist without at least one member. Members can leave the team at any moment, but only team's `admin` can remove other members from the team.

## Roles

Each team member has a role in the team that specifies what kind of actions they can do. For example, `admin` can invite new members, while `developer` cannot. The same user can have different roles in different teams.

At the moment the following roles are available:

* **Admin**: Has full access in the team. Admin can invite new team members and remove entities created by the other team members.
* **Developer**: Similar to the admin, but can only remove entities created by themself and cannot invite new members to the team.
* **Manager**: Has no access to things like Python Notebooks or Neural Networks, but can view and modify Projects & Labeling Jobs
* **Annotator**: Has access only to a single page, Labeling Jobs.
* **Viewer**: can only view items in team

Every team must have at least one `admin`, but can have two or more.

Here is the full list of roles permissions:

| Actions | Admin | Developer | Manager | Viewer | Annotator |
| :--- | :---: | :---: | :---: | :---: | :---: |
| **DTL** | ✅ | ✅ |  |  |  |
| **Import** | ✅ | ✅ |  |  |  |
| **Neural Networks** | ✅ | ✅ |  |  |  |
| **Python Notebooks** | ✅ | ✅ |  |  |  |
| **Tasks** | ✅ | ✅ |  |  |  |
|  |  |  |  |  |  |
| **Teams** |  |  |  |  |  |
|    Create | ✅ | ✅ |  |  |  |
|    Edit | ✅ | ✅ | ✅ |  |  |
|    Remove own | ✅ | ✅ |  |  |  |
|    Remove all | ✅ |  |  |  |  |
|  |  |  |  |  |  |
| **Members** |  |  |  |  |  |
|    List | ✅ | ✅ |  |  |  |
|    View | ✅ | ✅ |  |  |  |
|    Create | ✅ |  |  |  |  |
|    Edit | ✅ |  |  |  |  |
|    Leave Team | ✅ | ✅ |  |  |  |
|    Remove all | ✅ |  |  |  |  |
|  |  |  |  |  |  |
| **Workspaces** |  |  |  |  |  |
|    List | ✅ | ✅ | ✅ | ✅ |  |
|    View | ✅ | ✅ | ✅ | ✅ | ✅ |
|    Create | ✅ | ✅ |  |  |  |
|    Edit | ✅ |  |  |  |  |
|    Remove own | ✅ | ✅ |  |  |  |
|    Remove all | ✅ |  |  |  |  |
|  |  |  |  |  |  |
| **Plugins** |  |  |  |  |  |
|    List | ✅ | ✅ |  |  |  |
|    View | ✅ | ✅ |  |  |  |
|    Create | ✅ | ✅ |  |  |  |
|    Edit | ✅ | ✅ |  |  |  |
|    Remove own | ✅ | ✅ |  |  |  |
|    Remove all | ✅ |  |  |  |  |
|  |  |  |  |  |  |
| **Nodes** |  |  |  |  |  |
|    List | ✅ | ✅ |  |  | ✅ |
|    View | ✅ | ✅ |  |  | ✅ |
|    Create | ✅ | ✅ |  |  |  |
|    Edit own | ✅ | ✅ |  |  |  |
|    Remove own | ✅ | ✅ |  |  |  |
|  |  |  |  |  |  |
| **Labeling Jobs** |  |  |  |  |  |
|    List | ✅ | ✅ |  |  | ✅ |
|    View | ✅ | ✅ |  |  | ✅ |
|    Create | ✅ | ✅ | ✅ |  |  |
|    Edit | ✅ | ✅ | ✅ |  | ✅ |
|    Remove | ✅ | ✅ |  |  |  |
|  |  |  |  |  |  |
| **Projects** |  |  |  |  |  |
|    List | ✅ | ✅ | ✅ | ✅ |  |
|    View | ✅ | ✅ | ✅ | ✅ | ✅ |
|    Create | ✅ | ✅ |  |  |  |
|    Edit | ✅ | ✅ | ✅ |  |  |
|    Remove own | ✅ | ✅ |  |  |  |
|    Remove all | ✅ |  |  |  |  |
|  |  |  |  |  |  |
| **Datasets** |  |  |  |  |  |
|    List | ✅ | ✅ | ✅ | ✅ | ✅ |
|    View | ✅ | ✅ | ✅ | ✅ | ✅ |
|    Create | ✅ | ✅ |  |  |  |
|    Edit | ✅ | ✅ | ✅ |  |  |
|    Remove | ✅ | ✅ |  |  |  |
|  |  |  |  |  |  |
| **Classes** |  |  |  |  |  |
|    List | ✅ | ✅ | ✅ | ✅ | ✅ |
|    View | ✅ | ✅ | ✅ | ✅ | ✅ |
|    Create | ✅ | ✅ |  |  |  |
|    Edit | ✅ | ✅ | ✅ |  |  |
|    Remove | ✅ | ✅ |  |  |  |
|  |  |  |  |  |  |
| **Tags** |  |  |  |  |  |
|    List | ✅ | ✅ | ✅ | ✅ | ✅ |
|    View | ✅ | ✅ | ✅ | ✅ | ✅ |
|    Create | ✅ | ✅ | ✅ |  |  |
|    Edit | ✅ | ✅ | ✅ |  |  |
|    Remove | ✅ | ✅ |  |  |  |
|  |  |  |  |  |  |
| **Images** |  |  |  |  |  |
|    List | ✅ | ✅ | ✅ | ✅ | ✅ |
|    View | ✅ | ✅ | ✅ | ✅ | ✅ |
|    Create | ✅ | ✅ |  |  |  |
|    Edit | ✅ | ✅ | ✅ |  | ✅ |
|    Remove | ✅ | ✅ |  |  |  |
|  |  |  |  |  |  |
| **Figures** |  |  |  |  |  |
|    List | ✅ | ✅ | ✅ | ✅ | ✅ |
|    View | ✅ | ✅ | ✅ | ✅ | ✅ |
|    Create | ✅ | ✅ |  |  | ✅ |
|    Edit | ✅ | ✅ | ✅ |  | ✅ |
|    Remove own | ✅ | ✅ |  |  | ✅ |
|    Remove all | ✅ | ✅ |  |  |  |

