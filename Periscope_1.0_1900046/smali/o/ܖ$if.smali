.class Lo/ܖ$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ܖ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ܖ$1;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/ܖ$if;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 35
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 36
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/ڔ;

    move-object v2, v0

    .line 37
    invoke-interface {v2}, Lo/ڔ;->recycle()V

    .line 38
    const/4 v0, 0x1

    return v0

    .line 40
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
