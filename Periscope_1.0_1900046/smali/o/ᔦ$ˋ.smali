.class final Lo/ᔦ$ˋ;
.super Lo/ᔦ$ʻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᔦ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "\u02cb"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/ﾘ;)V
    .locals 2

    .line 401
    const/4 v0, 0x0

    new-array v0, v0, [Lo/ᔦ$ʻ;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lo/ᔦ$ʻ;-><init>(I[Lo/ᔦ$ʻ;)V

    .line 402
    iget-object v0, p1, Lo/ﾘ;->key:Ljava/lang/String;

    iput-object v0, p0, Lo/ᔦ$ˋ;->key:Ljava/lang/String;

    .line 403
    iget-object v0, p1, Lo/ﾘ;->value:Ljava/lang/String;

    iput-object v0, p0, Lo/ᔦ$ˋ;->value:Ljava/lang/String;

    .line 404
    return-void
.end method


# virtual methods
.method public ˊ(Lo/ɤ;)V
    .locals 2

    .line 416
    iget-object v0, p0, Lo/ᔦ$ˋ;->key:Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 417
    iget-object v0, p0, Lo/ᔦ$ˋ;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ᔦ$ˋ;->value:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 418
    return-void
.end method

.method public ᓻ()I
    .locals 3

    .line 408
    iget-object v0, p0, Lo/ᔦ$ˋ;->key:Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v2

    .line 409
    iget-object v0, p0, Lo/ᔦ$ˋ;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ᔦ$ˋ;->value:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/2addr v2, v0

    .line 411
    return v2
.end method
