.class public Lo/ท;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 2

    .line 33
    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 34
    invoke-static {p0}, Lo/ท;->ۥ(Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method

.method public static endSection()V
    .locals 2

    .line 44
    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 45
    invoke-static {}, Lo/ท;->ԏ()V

    .line 47
    :cond_0
    return-void
.end method

.method private static ԏ()V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 56
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 57
    return-void
.end method

.method private static ۥ(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 51
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 52
    return-void
.end method
