<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="col-md-4 grid-food">
				<div class="popular">
				<h3>求职信息</h3>
				<div class="dropdown">
				<!-- <ul class="number">
						<li><a href="mailto:info@sitename.com">一些新闻</a></li>
					</ul> -->
					<ul style="font-size:20px;margin-top:20px;">
						<s:iterator value="indexNews" status="st">
						<li><a href="redirectNew?id=<s:property value="neId"/>"><s:property value="neTitle"/> </a></li>
						</s:iterator>	
					</ul>
				<!-- <ul class="popular-in">
					<li><a><i> </i>技术</a>
						<ul class="detail" style="margin-left:50px;display:none;">
							<li><a>1</a></li>
							<li><a>1</a></li>
							<li><a>1</a></li>
						</ul>
					</li>
					<li><a><i> </i>产品</a>
						<ul class="detail" style="margin-left:50px;display:none;">
							<li><a>1</a></li>
							<li><a>1</a></li>
							<li><a>1</a></li>
						</ul>
					</li>
					<li><a><i> </i>设计</a>
						<ul class="detail" style="margin-left:50px;display:none;">
							<li><a>1</a></li>
							<li><a>1</a></li>
							<li><a>1</a></li>
						</ul>
					</li>					
				</ul> -->
				<script>
					$(".popular-in li").toggle(
						function () {
							$(this).children().show();
						},
						function () {
							$(this).children("ul").hide();
						}
					);
				</script>
				</div>
				</div>
				<div class="popular phone">
					
				</div>
			</div>