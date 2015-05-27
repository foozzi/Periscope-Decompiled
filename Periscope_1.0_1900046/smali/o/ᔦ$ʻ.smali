.class abstract Lo/ᔦ$ʻ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᔦ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "\u02bb"
.end annotation


# instance fields
.field private final oS:[Lo/ᔦ$ʻ;

.field private final tag:I


# direct methods
.method public varargs constructor <init>(I[Lo/ᔦ$ʻ;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lo/ᔦ$ʻ;->tag:I

    .line 47
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/ᔦ;->ᓺ()[Lo/ᔦ$ʻ;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lo/ᔦ$ʻ;->oS:[Lo/ᔦ$ʻ;

    .line 48
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 2

    .line 56
    invoke-virtual {p0}, Lo/ᔦ$ʻ;->ᓾ()I

    move-result v1

    .line 57
    invoke-static {v1}, Lo/ɤ;->ﺗ(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 58
    iget v0, p0, Lo/ᔦ$ʻ;->tag:I

    invoke-static {v0}, Lo/ɤ;->ﯾ(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 59
    return v1
.end method

.method public ˊ(Lo/ɤ;)V
    .locals 0

    .line 111
    return-void
.end method

.method public ˋ(Lo/ɤ;)V
    .locals 6

    .line 82
    iget v0, p0, Lo/ᔦ$ʻ;->tag:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lo/ɤ;->ו(II)V

    .line 83
    invoke-virtual {p0}, Lo/ᔦ$ʻ;->ᓾ()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/ɤ;->ﹰ(I)V

    .line 84
    invoke-virtual {p0, p1}, Lo/ᔦ$ʻ;->ˊ(Lo/ɤ;)V

    .line 85
    iget-object v2, p0, Lo/ᔦ$ʻ;->oS:[Lo/ᔦ$ʻ;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 86
    invoke-virtual {v5, p1}, Lo/ᔦ$ʻ;->ˋ(Lo/ɤ;)V

    .line 85
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public ᓻ()I
    .locals 1

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public ᓾ()I
    .locals 6

    .line 68
    invoke-virtual {p0}, Lo/ᔦ$ʻ;->ᓻ()I

    move-result v1

    .line 69
    iget-object v2, p0, Lo/ᔦ$ʻ;->oS:[Lo/ᔦ$ʻ;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 70
    invoke-virtual {v5}, Lo/ᔦ$ʻ;->getSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 69
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return v1
.end method
