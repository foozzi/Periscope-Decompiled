.class Lo/ads$if;
.super Lo/ads$ˊ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field final synthetic byX:Lo/ads;

.field private final byY:Lo/ali;


# direct methods
.method constructor <init>(Lo/ads;Lo/ant;Lo/amw;Lo/vk;)V
    .locals 1

    .line 160
    iput-object p1, p0, Lo/ads$if;->byX:Lo/ads;

    .line 161
    invoke-direct {p0, p1, p2, p3, p4}, Lo/ads$ˊ;-><init>(Lo/ads;Lo/ant;Lo/amw;Lo/vk;)V

    .line 162
    new-instance v0, Lo/ali;

    invoke-direct {v0}, Lo/ali;-><init>()V

    iput-object v0, p0, Lo/ads$if;->byY:Lo/ali;

    .line 163
    return-void
.end method


# virtual methods
.method public getIconResId()I
    .locals 1

    .line 167
    const v0, 0x7f020096

    return v0
.end method

.method public getIconTint()I
    .locals 1

    .line 172
    const v0, 0x7f09003f

    return v0
.end method

.method protected xg()V
    .locals 5

    .line 182
    iget-object v0, p0, Lo/ads$if;->bza:Lo/vk;

    invoke-virtual {v0}, Lo/vk;->tP()V

    .line 183
    iget-object v0, p0, Lo/ads$if;->byX:Lo/ads;

    invoke-static {v0}, Lo/ads;->ˎ(Lo/ads;)Lo/amw;

    move-result-object v0

    iget-object v1, p0, Lo/ads$if;->brj:Lo/ant;

    invoke-virtual {v1}, Lo/ant;->Cb()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/ads$if;->brj:Lo/ant;

    invoke-virtual {v2}, Lo/ant;->Cl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/ads$if;->brj:Lo/ant;

    invoke-virtual {v3}, Lo/ant;->Cf()Lo/anu;

    move-result-object v3

    sget-object v4, Lo/anu;->bNX:Lo/anu;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lo/ads$if;->brj:Lo/ant;

    invoke-virtual {v3}, Lo/ant;->du()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lo/amw;->ʾ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public xh()Lo/ali;
    .locals 1

    .line 189
    iget-object v0, p0, Lo/ads$if;->byY:Lo/ali;

    return-object v0
.end method

.method public ʲ(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 177
    const v0, 0x7f060018

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
