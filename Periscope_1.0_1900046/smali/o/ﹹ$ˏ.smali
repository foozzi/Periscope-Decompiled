.class Lo/ﹹ$ˏ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﹹ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02cf"
.end annotation


# instance fields
.field final synthetic ӧ:Lo/ﹹ;


# direct methods
.method private constructor <init>(Lo/ﹹ;)V
    .locals 0

    .line 855
    iput-object p1, p0, Lo/ﹹ$ˏ;->ӧ:Lo/ﹹ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ﹹ;Lo/ﹹ$1;)V
    .locals 0

    .line 855
    invoke-direct {p0, p1}, Lo/ﹹ$ˏ;-><init>(Lo/ﹹ;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 857
    iget-object v0, p0, Lo/ﹹ$ˏ;->ӧ:Lo/ﹹ;

    iget-boolean v0, v0, Lo/ﹹ;->ƨ:Z

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lo/ﹹ$ˏ;->ӧ:Lo/ﹹ;

    invoke-virtual {v0}, Lo/ﹹ;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Lo/ﹹ$ˏ;->ӧ:Lo/ﹹ;

    invoke-virtual {v0, p0}, Lo/ﹹ;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 865
    :cond_0
    iget-object v0, p0, Lo/ﹹ$ˏ;->ӧ:Lo/ﹹ;

    invoke-static {v0}, Lo/ﹹ;->ˋ(Lo/ﹹ;)V

    .line 867
    :cond_1
    :goto_0
    return-void
.end method
