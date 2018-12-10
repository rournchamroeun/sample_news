<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
    <!-- Sidebar user panel -->
    <ul class="sidebar-menu" data-widget="tree">
      @can('category-list')
        <li><a href="{{ route('categories.index') }}"><i class="fa fa-list-alt"></i> <span>Categories</span></a></li>
      @endcan
      @can('post-list')
        <li><a href="{{ route('posts.index') }}"><i class="fa fa-newspaper-o"></i> <span>Posts</span></a></li>
      @endcan
      @can('role-list')
        <li><a href="{{ route('roles.index') }}"><i class="fa fa-lock"></i></i> <span>Roles</span></a></li>
      @endcan
      @can('user-list')
        <li><a href="{{ route('users.index') }}"><i class="fa fa-users"></i> <span>Users</span></a></li>
      @endcan
        <li class="treeview">
          <a href="#">
            <span>API</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu" style="display: none;">
            <li><a href="{{ route('api.posts.all') }}"><i class="fa fa-circle-o"></i>List</a></li>
            <li><a href="{{ route('api.posts.id', 2) }}"><i class="fa fa-circle-o"></i>By ID</a></li>
          </ul>
        </li>
    </ul>
  </section>
  <!-- /.sidebar -->
</aside>
