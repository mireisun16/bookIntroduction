# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

nickname：<%= @comment.nickname %><br>
comment：<%= @comment.comment %><br>


<%= hidden_field_tag :book_intro_id,@bk_intro.id %><br>
<%= text_field_tag :nick_name %><br>
<%= text_field_tag :comment %><br>
<%= link_to "内容を編集する",comment_path %><br>