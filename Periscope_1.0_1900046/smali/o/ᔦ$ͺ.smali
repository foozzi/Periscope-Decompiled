.class final Lo/ᔦ$ͺ;
.super Lo/ᔦ$ʻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᔦ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "\u037a"
.end annotation


# instance fields
.field private final importance:I

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/Ÿ;Lo/ᔦ$ʼ;)V
    .locals 2

    .line 248
    const/4 v0, 0x1

    new-array v0, v0, [Lo/ᔦ$ʻ;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lo/ᔦ$ʻ;-><init>(I[Lo/ᔦ$ʻ;)V

    .line 249
    iget-object v0, p1, Lo/Ÿ;->name:Ljava/lang/String;

    iput-object v0, p0, Lo/ᔦ$ͺ;->name:Ljava/lang/String;

    .line 250
    iget v0, p1, Lo/Ÿ;->importance:I

    iput v0, p0, Lo/ᔦ$ͺ;->importance:I

    .line 251
    return-void
.end method

.method private ᓿ()Z
    .locals 1

    .line 269
    iget-object v0, p0, Lo/ᔦ$ͺ;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᔦ$ͺ;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public ˊ(Lo/ɤ;)V
    .locals 2

    .line 262
    invoke-direct {p0}, Lo/ᔦ$ͺ;->ᓿ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lo/ᔦ$ͺ;->name:Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 265
    :cond_0
    iget v0, p0, Lo/ᔦ$ͺ;->importance:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ᵗ(II)V

    .line 266
    return-void
.end method

.method public ᓻ()I
    .locals 3

    .line 255
    invoke-direct {p0}, Lo/ᔦ$ͺ;->ᓿ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᔦ$ͺ;->name:Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 257
    :goto_0
    iget v0, p0, Lo/ᔦ$ͺ;->importance:I

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lo/ɤ;->ʲ(II)I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method
