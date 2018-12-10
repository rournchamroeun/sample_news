@extends('layouts.app')

@section('content')
  <div class="row">
    <div class="col-lg-12 margin-tb">
      <div class="pull-left">
        <h2>Post Management</h2>
      </div>
      <div class="pull-right">
        <a class="btn btn-success" href="{{ route('posts.create') }}"> Create New Post</a>
      </div>
    </div>
  </div>

  @if ($message = Session::get('success'))
    <div class="alert alert-success">
      <p>{{ $message }}</p>
    </div>
  @endif

  <table class="table table-bordered">
    <tr>
      <th>No</th>
      <th>Title</th>
      <th>Content</th>
      <th width="280px">Action</th>
    </tr>
    @foreach ($posts as $val)
      <tr>
        <td>{{ ++$i }}</td>
        <td>{{ str_limit($val->title, 20) }}</td>
        <td>{{ str_limit($val->content, 100) }}</td>
        <td>
          <form action="{{ route('posts.destroy', $val->id) }}" method="POST">

            <a class="btn btn-info" href="{{ route('posts.show',$val->id) }}">Show</a>

            <a class="btn btn-primary" href="{{ route('posts.edit',$val->id) }}">Edit</a>

            @csrf
            @method('DELETE')

            <button type="submit" class="btn btn-danger">Delete</button>
          </form>
        </td>
      </tr>
    @endforeach
  </table>

  {!! $posts->links() !!}

@endsection
