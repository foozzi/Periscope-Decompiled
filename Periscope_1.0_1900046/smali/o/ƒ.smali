.class public Lo/ƒ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(DDDDD)D
    .locals 8

    .line 30
    sub-double v2, p4, p2

    .line 31
    sub-double v4, p8, p6

    .line 32
    sub-double v0, p0, p2

    div-double v6, v0, v2

    .line 33
    mul-double v0, v6, v4

    add-double/2addr v0, p6

    return-wide v0
.end method
