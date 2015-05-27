.class public Lo/ล;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile BE:[Ljava/lang/String;

.field private static volatile BF:Z


# direct methods
.method public static isTagEnabled(Ljava/lang/String;)Z
    .locals 3

    .line 57
    sget-boolean v0, Lo/ล;->BF:Z

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    return v0

    .line 62
    :cond_0
    sget-object v1, Lo/ล;->BE:[Ljava/lang/String;

    .line 63
    if-eqz v1, :cond_1

    array-length v0, v1

    if-nez v0, :cond_2

    .line 64
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 66
    :cond_2
    const/4 v2, 0x0

    :goto_0
    array-length v0, v1

    if-ge v2, v0, :cond_4

    .line 67
    aget-object v0, v1, v2

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_4
    const/4 v0, 0x0

    return v0
.end method
