.class final Lo/ᔦ$ˎ;
.super Lo/ᔦ$ʻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᔦ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "\u02ce"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 184
    const/4 v0, 0x0

    new-array v0, v0, [Lo/ᔦ$ʻ;

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lo/ᔦ$ʻ;-><init>(I[Lo/ᔦ$ʻ;)V

    .line 185
    return-void
.end method


# virtual methods
.method public ˊ(Lo/ɤ;)V
    .locals 3

    .line 201
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lo/ɤ;->ˊ(IF)V

    .line 202
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lo/ɤ;->ᵋ(II)V

    .line 203
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lo/ɤ;->ˑ(IZ)V

    .line 204
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lo/ɤ;->ᵗ(II)V

    .line 205
    const/4 v0, 0x5

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lo/ɤ;->ˊ(IJ)V

    .line 206
    const/4 v0, 0x6

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lo/ɤ;->ˊ(IJ)V

    .line 207
    return-void
.end method

.method public ᓻ()I
    .locals 4

    .line 189
    const/4 v3, 0x0

    .line 190
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ɤ;->ˋ(IF)I

    move-result v0

    add-int/lit8 v3, v0, 0x0

    .line 191
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ɤ;->ǃ(II)I

    move-result v0

    add-int/2addr v3, v0

    .line 192
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ɤ;->ـ(IZ)I

    move-result v0

    add-int/2addr v3, v0

    .line 193
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ɤ;->ʲ(II)I

    move-result v0

    add-int/2addr v3, v0

    .line 194
    const/4 v0, 0x5

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lo/ɤ;->ˋ(IJ)I

    move-result v0

    add-int/2addr v3, v0

    .line 195
    const/4 v0, 0x6

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lo/ɤ;->ˋ(IJ)I

    move-result v0

    add-int/2addr v3, v0

    .line 196
    return v3
.end method
