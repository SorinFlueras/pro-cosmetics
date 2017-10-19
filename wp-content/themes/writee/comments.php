<?php 
/********************************************/
## comments template
/*******************************************/

global $comments;
?>
<div id="comments" class="comments-area">

	<?php if ( post_password_required() ) : ?>
		<p class="nopassword">
			<?php echo esc_html__( 'This post is password protected. Enter the password to view any comments.', 'writee' ); ?>
		</p>
	</div><!-- #comments -->
	<?php return; endif;  ?>
	
	<?php if ( have_comments() ) : ?>
	<h2 class="comments-title"><?php _e( 'Comments' , 'writee' ); ?> <!--small>
	<?php echo number_format_i18n( get_comments_number() ); ?></small--></h2>
    <ol class="comments-list">
      <?php
      wp_list_comments( array(
        'callback' => 'writee_comment_list',
        'style'    => 'ol'
      ) );
      ?>
    </ol>

    <?php if ( get_comment_pages_count() > 1 && get_option( 'page_comments' ) ) : ?>
    <nav id="comment-nav-below" class="navigation" role="navigation">
      <div class="nav-previous"><?php previous_comments_link( __( '&larr; Older Comments', 'writee' ) ); ?></div>
      <div class="nav-next"><?php next_comments_link( __( 'Newer Comments &rarr;', 'writee' ) ); ?></div>
    </nav>
    <?php endif; ?>

    <?php if ( ! comments_open() && get_comments_number() ) : ?>
    <p class="nocomments"><?php echo esc_html__( 'Comments are closed.' , 'writee' ); ?></p>
    <?php endif; ?>

  <?php endif; ?>

  <?php
  /******************************/
	## comment form section
  /******************************/
  comment_form( array(
    'comment_notes_after' => '',
    'id_submit'           => 'writty-comment-submit',
    'label_submit'        => __( 'Submit' , 'writee' )
  ) );
  ?>
  
</div><!-- #comments -->