.class Lo/ᓴ$ˊ;
.super Lo/ᴬ$ˊ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᓴ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02ca"
.end annotation


# instance fields
.field final synthetic ﾓ:Lo/ᓴ;


# direct methods
.method private constructor <init>(Lo/ᓴ;)V
    .locals 0

    .line 763
    iput-object p1, p0, Lo/ᓴ$ˊ;->ﾓ:Lo/ᓴ;

    invoke-direct {p0}, Lo/ᴬ$ˊ;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ᓴ;Lo/ᓴ$1;)V
    .locals 0

    .line 763
    invoke-direct {p0, p1}, Lo/ᓴ$ˊ;-><init>(Lo/ᓴ;)V

    return-void
.end method


# virtual methods
.method public Ӏ()Lo/ῑ;
    .locals 1

    .line 766
    iget-object v0, p0, Lo/ᓴ$ˊ;->ﾓ:Lo/ᓴ;

    invoke-static {v0}, Lo/ᓴ;->ʽ(Lo/ᓴ;)Lo/ᓴ$if;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᓴ$ˊ;->ﾓ:Lo/ᓴ;

    invoke-static {v0}, Lo/ᓴ;->ʽ(Lo/ᓴ;)Lo/ᓴ$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᓴ$if;->Ӏ()Lo/ῑ;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
