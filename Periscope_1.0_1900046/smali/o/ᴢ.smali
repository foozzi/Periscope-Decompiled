.class final Lo/ᴢ;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final pn:I

.field static final po:I

.field static final pp:I

.field static final pq:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 156
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lo/ᴢ;->ۦ(II)I

    move-result v0

    sput v0, Lo/ᴢ;->pn:I

    .line 158
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lo/ᴢ;->ۦ(II)I

    move-result v0

    sput v0, Lo/ᴢ;->po:I

    .line 160
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ᴢ;->ۦ(II)I

    move-result v0

    sput v0, Lo/ᴢ;->pp:I

    .line 162
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lo/ᴢ;->ۦ(II)I

    move-result v0

    sput v0, Lo/ᴢ;->pq:I

    return-void
.end method

.method static ۦ(II)I
    .locals 1

    .line 71
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method
