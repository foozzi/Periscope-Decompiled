.class Lo/ΐ$ˊ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ΐ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ΐ$1;)V
    .locals 0

    .line 195
    invoke-direct {p0}, Lo/ΐ$ˊ;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 200
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/ΐ;

    move-object v2, v0

    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 202
    invoke-static {v2}, Lo/ΐ;->ˊ(Lo/ΐ;)V

    goto :goto_0

    .line 204
    :cond_1
    invoke-static {v2}, Lo/ΐ;->ˋ(Lo/ΐ;)V

    .line 206
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 209
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
