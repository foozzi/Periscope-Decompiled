.class Lo/ｪ$ˋ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ｪ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02cb"
.end annotation


# instance fields
.field final synthetic lc:Lo/ｪ;


# direct methods
.method private constructor <init>(Lo/ｪ;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lo/ｪ$ˋ;->lc:Lo/ｪ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ｪ;Lo/ｪ$1;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lo/ｪ$ˋ;-><init>(Lo/ｪ;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/ｪ$if;

    move-object v2, v0

    .line 135
    iget-object v0, p0, Lo/ｪ$ˋ;->lc:Lo/ｪ;

    invoke-virtual {v0, v2}, Lo/ｪ;->ˊ(Lo/ｪ$if;)V

    .line 136
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 138
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/ｪ$if;

    move-object v2, v0

    .line 139
    invoke-static {v2}, Lo/ᓲ;->ˎ(Lo/ﭩ;)V

    .line 141
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
