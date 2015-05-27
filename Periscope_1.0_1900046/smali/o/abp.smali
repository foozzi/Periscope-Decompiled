.class public Lo/abp;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wy()Ltv/periscope/android/util/Size;
    .locals 3

    .line 9
    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 10
    const/16 v0, 0xba2

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 11
    const/4 v0, 0x2

    aget v0, v2, v0

    const/4 v1, 0x3

    aget v1, v2, v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/Size;->ﻧ(II)Ltv/periscope/android/util/Size;

    move-result-object v0

    return-object v0
.end method
