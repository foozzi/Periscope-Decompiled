.class public Lo/aba;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static ˋ(DD)Z
    .locals 2

    .line 13
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ˏ(Landroid/location/Location;)Z
    .locals 4

    .line 9
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lo/aba;->ˋ(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
