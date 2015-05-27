.class Lo/ads$ˋ;
.super Lo/ads$ˊ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02cb"
.end annotation


# instance fields
.field final synthetic byX:Lo/ads;


# direct methods
.method public constructor <init>(Lo/ads;Lo/ant;Lo/amw;Lo/vk;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lo/ads$ˋ;->byX:Lo/ads;

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Lo/ads$ˊ;-><init>(Lo/ads;Lo/ant;Lo/amw;Lo/vk;)V

    .line 112
    return-void
.end method


# virtual methods
.method public getIconResId()I
    .locals 1

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getIconTint()I
    .locals 1

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method protected xg()V
    .locals 2

    .line 131
    iget-object v0, p0, Lo/ads$ˋ;->byZ:Lo/amw;

    iget-object v1, p0, Lo/ads$ˋ;->brj:Lo/ant;

    invoke-virtual {v1}, Lo/ant;->Cb()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/amw;->ƚ(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public xh()Lo/ali;
    .locals 1

    .line 136
    new-instance v0, Lo/adu;

    invoke-direct {v0, p0}, Lo/adu;-><init>(Lo/ads$ˋ;)V

    return-object v0
.end method

.method public ʲ(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 126
    const v0, 0x7f060019

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
