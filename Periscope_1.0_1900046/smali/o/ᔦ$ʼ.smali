.class final Lo/ᔦ$ʼ;
.super Lo/ᔦ$ʻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᔦ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "\u02bc"
.end annotation


# instance fields
.field private final oT:[Lo/ᔦ$ʻ;


# direct methods
.method public varargs constructor <init>([Lo/ᔦ$ʻ;)V
    .locals 2

    .line 122
    const/4 v0, 0x0

    new-array v0, v0, [Lo/ᔦ$ʻ;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lo/ᔦ$ʻ;-><init>(I[Lo/ᔦ$ʻ;)V

    .line 123
    iput-object p1, p0, Lo/ᔦ$ʼ;->oT:[Lo/ᔦ$ʻ;

    .line 124
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 6

    .line 135
    const/4 v1, 0x0

    .line 136
    iget-object v2, p0, Lo/ᔦ$ʼ;->oT:[Lo/ᔦ$ʻ;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 137
    invoke-virtual {v5}, Lo/ᔦ$ʻ;->getSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 136
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return v1
.end method

.method public ˋ(Lo/ɤ;)V
    .locals 5

    .line 128
    iget-object v1, p0, Lo/ᔦ$ʼ;->oT:[Lo/ᔦ$ʻ;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 129
    invoke-virtual {v4, p1}, Lo/ᔦ$ʻ;->ˋ(Lo/ɤ;)V

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method
