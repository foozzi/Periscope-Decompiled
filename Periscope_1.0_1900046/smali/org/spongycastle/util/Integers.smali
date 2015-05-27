.class public Lorg/spongycastle/util/Integers;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rotateLeft(II)I
    .locals 1

    .line 7
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    return v0
.end method

.method public static valueOf(I)Ljava/lang/Integer;
    .locals 1

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
