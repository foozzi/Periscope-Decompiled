.class Lo/ˏ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﹳ$ˊ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ʹ:Landroid/support/v4/app/Fragment;

.field final synthetic ՙ:Lo/ˎ;


# direct methods
.method constructor <init>(Lo/ˎ;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 1186
    iput-object p1, p0, Lo/ˏ;->ՙ:Lo/ˎ;

    iput-object p2, p0, Lo/ˏ;->ʹ:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 1189
    iget-object v0, p0, Lo/ˏ;->ʹ:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
