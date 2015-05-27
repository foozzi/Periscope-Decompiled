.class Lo/ᓴ$aux;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᵉ$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᓴ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "aux"
.end annotation


# instance fields
.field final synthetic ﾓ:Lo/ᓴ;


# direct methods
.method private constructor <init>(Lo/ᓴ;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lo/ᓴ$aux;->ﾓ:Lo/ᓴ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ᓴ;Lo/ᓴ$1;)V
    .locals 0

    .line 723
    invoke-direct {p0, p1}, Lo/ᓴ$aux;-><init>(Lo/ᓴ;)V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/ᵁ;Z)V
    .locals 3

    .line 736
    instance-of v0, p1, Lo/ᵡ;

    if-eqz v0, :cond_0

    .line 737
    move-object v0, p1

    check-cast v0, Lo/ᵡ;

    invoke-virtual {v0}, Lo/ᵡ;->ﭔ()Lo/ᵁ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᵁ;->ˍ(Z)V

    .line 739
    :cond_0
    iget-object v0, p0, Lo/ᓴ$aux;->ﾓ:Lo/ᓴ;

    invoke-virtual {v0}, Lo/ᓴ;->ᑋ()Lo/ᵉ$if;

    move-result-object v2

    .line 740
    if-eqz v2, :cond_1

    .line 741
    invoke-interface {v2, p1, p2}, Lo/ᵉ$if;->ˊ(Lo/ᵁ;Z)V

    .line 743
    :cond_1
    return-void
.end method

.method public ˎ(Lo/ᵁ;)Z
    .locals 3

    .line 727
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 729
    :cond_0
    iget-object v0, p0, Lo/ᓴ$aux;->ﾓ:Lo/ᓴ;

    move-object v1, p1

    check-cast v1, Lo/ᵡ;

    invoke-virtual {v1}, Lo/ᵡ;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, v0, Lo/ᓴ;->ﾊ:I

    .line 730
    iget-object v0, p0, Lo/ᓴ$aux;->ﾓ:Lo/ᓴ;

    invoke-virtual {v0}, Lo/ᓴ;->ᑋ()Lo/ᵉ$if;

    move-result-object v2

    .line 731
    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lo/ᵉ$if;->ˎ(Lo/ᵁ;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
