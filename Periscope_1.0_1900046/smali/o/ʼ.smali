.class public Lo/ʼ;
.super Landroid/support/v4/app/Fragment;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field mBackStackId:I

.field mCancelable:Z

.field mDialog:Landroid/app/Dialog;

.field mDismissed:Z

.field mShownByMe:Z

.field mShowsDialog:Z

.field mStyle:I

.field mTheme:I

.field mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lo/ʼ;->mStyle:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lo/ʼ;->mTheme:I

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ʼ;->mCancelable:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ʼ;->mShowsDialog:Z

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lo/ʼ;->mBackStackId:I

    .line 97
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ʼ;->dismissInternal(Z)V

    .line 168
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/ʼ;->dismissInternal(Z)V

    .line 178
    return-void
.end method

.method dismissInternal(Z)V
    .locals 4

    .line 181
    iget-boolean v0, p0, Lo/ʼ;->mDismissed:Z

    if-eqz v0, :cond_0

    .line 182
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ʼ;->mDismissed:Z

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ʼ;->mShownByMe:Z

    .line 186
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    .line 190
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ʼ;->mViewDestroyed:Z

    .line 191
    iget v0, p0, Lo/ʼ;->mBackStackId:I

    if-ltz v0, :cond_2

    .line 192
    invoke-virtual {p0}, Lo/ʼ;->getFragmentManager()Lo/ˈ;

    move-result-object v0

    iget v1, p0, Lo/ʼ;->mBackStackId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo/ˈ;->popBackStack(II)V

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lo/ʼ;->mBackStackId:I

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p0}, Lo/ʼ;->getFragmentManager()Lo/ˈ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ˈ;->ˋ()Lo/ᐨ;

    move-result-object v3

    .line 197
    invoke-virtual {v3, p0}, Lo/ᐨ;->ˊ(Landroid/support/v4/app/Fragment;)Lo/ᐨ;

    .line 198
    if-eqz p1, :cond_3

    .line 199
    invoke-virtual {v3}, Lo/ᐨ;->commitAllowingStateLoss()I

    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {v3}, Lo/ᐨ;->commit()I

    .line 204
    :goto_0
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 207
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2

    .line 304
    iget-boolean v0, p0, Lo/ʼ;->mShowsDialog:Z

    if-nez v0, :cond_0

    .line 305
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0

    .line 308
    :cond_0
    invoke-virtual {p0, p1}, Lo/ʼ;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    .line 309
    iget v0, p0, Lo/ʼ;->mStyle:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 311
    :pswitch_0
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 317
    :pswitch_1
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 319
    :goto_0
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0

    .line 323
    :cond_1
    iget-object v0, p0, Lo/ʼ;->mActivity:Lo/ι;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lo/ι;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getShowsDialog()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Lo/ʼ;->mShowsDialog:Z

    return v0
.end method

.method public getTheme()I
    .locals 1

    .line 212
    iget v0, p0, Lo/ʼ;->mTheme:I

    return v0
.end method

.method public isCancelable()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lo/ʼ;->mCancelable:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 369
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 371
    iget-boolean v0, p0, Lo/ʼ;->mShowsDialog:Z

    if-nez v0, :cond_0

    .line 372
    return-void

    .line 375
    :cond_0
    invoke-virtual {p0}, Lo/ʼ;->getView()Landroid/view/View;

    move-result-object v2

    .line 376
    if-eqz v2, :cond_2

    .line 377
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 378
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DialogFragment can not be attached to a container view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_1
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 382
    :cond_2
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lo/ʼ;->getActivity()Lo/ι;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 383
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    iget-boolean v1, p0, Lo/ʼ;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 384
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 385
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 386
    if-eqz p1, :cond_3

    .line 387
    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 388
    if-eqz v3, :cond_3

    .line 389
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 392
    :cond_3
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 266
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 267
    iget-boolean v0, p0, Lo/ʼ;->mShownByMe:Z

    if-nez v0, :cond_0

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ʼ;->mDismissed:Z

    .line 272
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 355
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 287
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 289
    iget v0, p0, Lo/ʼ;->mContainerId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/ʼ;->mShowsDialog:Z

    .line 291
    if-eqz p1, :cond_1

    .line 292
    const-string v0, "android:style"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lo/ʼ;->mStyle:I

    .line 293
    const-string v0, "android:theme"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lo/ʼ;->mTheme:I

    .line 294
    const-string v0, "android:cancelable"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lo/ʼ;->mCancelable:Z

    .line 295
    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Lo/ʼ;->mShowsDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lo/ʼ;->mShowsDialog:Z

    .line 296
    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lo/ʼ;->mBackStackId:I

    .line 299
    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 351
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lo/ʼ;->getActivity()Lo/ι;

    move-result-object v1

    invoke-virtual {p0}, Lo/ʼ;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 442
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 443
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ʼ;->mViewDestroyed:Z

    .line 448
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    .line 451
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 276
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 277
    iget-boolean v0, p0, Lo/ʼ;->mShownByMe:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/ʼ;->mDismissed:Z

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ʼ;->mDismissed:Z

    .line 283
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 358
    iget-boolean v0, p0, Lo/ʼ;->mViewDestroyed:Z

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/ʼ;->dismissInternal(Z)V

    .line 365
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 405
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 406
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    .line 408
    if-eqz v2, :cond_0

    .line 409
    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 412
    :cond_0
    iget v0, p0, Lo/ʼ;->mStyle:I

    if-eqz v0, :cond_1

    .line 413
    const-string v0, "android:style"

    iget v1, p0, Lo/ʼ;->mStyle:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    :cond_1
    iget v0, p0, Lo/ʼ;->mTheme:I

    if-eqz v0, :cond_2

    .line 416
    const-string v0, "android:theme"

    iget v1, p0, Lo/ʼ;->mTheme:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 418
    :cond_2
    iget-boolean v0, p0, Lo/ʼ;->mCancelable:Z

    if-nez v0, :cond_3

    .line 419
    const-string v0, "android:cancelable"

    iget-boolean v1, p0, Lo/ʼ;->mCancelable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 421
    :cond_3
    iget-boolean v0, p0, Lo/ʼ;->mShowsDialog:Z

    if-nez v0, :cond_4

    .line 422
    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Lo/ʼ;->mShowsDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 424
    :cond_4
    iget v0, p0, Lo/ʼ;->mBackStackId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 425
    const-string v0, "android:backStackId"

    iget v1, p0, Lo/ʼ;->mBackStackId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 396
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 397
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ʼ;->mViewDestroyed:Z

    .line 399
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 401
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 431
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 432
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 435
    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 225
    iput-boolean p1, p0, Lo/ʼ;->mCancelable:Z

    .line 226
    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ʼ;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 227
    :cond_0
    return-void
.end method

.method public setShowsDialog(Z)V
    .locals 0

    .line 254
    iput-boolean p1, p0, Lo/ʼ;->mShowsDialog:Z

    .line 255
    return-void
.end method

.method public setStyle(II)V
    .locals 2

    .line 114
    iput p1, p0, Lo/ʼ;->mStyle:I

    .line 115
    iget v0, p0, Lo/ʼ;->mStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lo/ʼ;->mStyle:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 116
    :cond_0
    const v0, 0x1030059

    iput v0, p0, Lo/ʼ;->mTheme:I

    .line 118
    :cond_1
    if-eqz p2, :cond_2

    .line 119
    iput p2, p0, Lo/ʼ;->mTheme:I

    .line 121
    :cond_2
    return-void
.end method

.method public show(Lo/ᐨ;Ljava/lang/String;)I
    .locals 1

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ʼ;->mDismissed:Z

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ʼ;->mShownByMe:Z

    .line 154
    invoke-virtual {p1, p0, p2}, Lo/ᐨ;->ˊ(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Lo/ᐨ;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ʼ;->mViewDestroyed:Z

    .line 156
    invoke-virtual {p1}, Lo/ᐨ;->commit()I

    move-result v0

    iput v0, p0, Lo/ʼ;->mBackStackId:I

    .line 157
    iget v0, p0, Lo/ʼ;->mBackStackId:I

    return v0
.end method

.method public show(Lo/ˈ;Ljava/lang/String;)V
    .locals 2

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ʼ;->mDismissed:Z

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ʼ;->mShownByMe:Z

    .line 137
    invoke-virtual {p1}, Lo/ˈ;->ˋ()Lo/ᐨ;

    move-result-object v1

    .line 138
    invoke-virtual {v1, p0, p2}, Lo/ᐨ;->ˊ(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Lo/ᐨ;

    .line 139
    invoke-virtual {v1}, Lo/ᐨ;->commit()I

    .line 140
    return-void
.end method
