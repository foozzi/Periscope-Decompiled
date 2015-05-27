.class public abstract Lorg/spongycastle/math/raw/Nat512;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ʿ([I[I[I)V
    .locals 13

    .line 8
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat256;->ʿ([I[I[I)V

    .line 9
    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    const/16 v1, 0x8

    const/16 v3, 0x8

    const/16 v5, 0x10

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat256;->ˋ([II[II[II)V

    .line 11
    const/16 v0, 0x8

    const/16 v1, 0x10

    invoke-static {p2, v0, p2, v1}, Lorg/spongycastle/math/raw/Nat256;->ˊ([II[II)I

    move-result v7

    .line 12
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {p2, v0, p2, v1, v2}, Lorg/spongycastle/math/raw/Nat256;->ˊ([II[III)I

    move-result v0

    add-int v8, v7, v0

    .line 13
    const/16 v0, 0x18

    const/16 v1, 0x10

    invoke-static {p2, v0, p2, v1, v8}, Lorg/spongycastle/math/raw/Nat256;->ˊ([II[III)I

    move-result v0

    add-int/2addr v7, v0

    .line 15
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v9

    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v10

    .line 16
    move-object v0, p0

    move-object v2, p0

    move-object v4, v9

    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat256;->ˊ([II[II[II)Z

    move-result v0

    move-object v1, p1

    move-object v3, p1

    move-object v5, v10

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/spongycastle/math/raw/Nat256;->ˊ([II[II[II)Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 18
    :goto_0
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qw()[I

    move-result-object v12

    .line 19
    invoke-static {v9, v10, v12}, Lorg/spongycastle/math/raw/Nat256;->ʿ([I[I[I)V

    .line 21
    if-eqz v11, :cond_1

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v12, v1, p2, v2}, Lorg/spongycastle/math/raw/Nat;->ᐝ(I[II[II)I

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x10

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v12, v1, p2, v2}, Lorg/spongycastle/math/raw/Nat;->ʻ(I[II[II)I

    move-result v0

    :goto_1
    add-int/2addr v7, v0

    .line 22
    const/16 v0, 0x20

    const/16 v1, 0x18

    invoke-static {v0, v7, p2, v1}, Lorg/spongycastle/math/raw/Nat;->ˊ(II[II)I

    .line 23
    return-void
.end method

.method public static ι([I[I)V
    .locals 10

    .line 27
    invoke-static {p0, p1}, Lorg/spongycastle/math/raw/Nat256;->ι([I[I)V

    .line 28
    const/16 v0, 0x8

    const/16 v1, 0x10

    invoke-static {p0, v0, p1, v1}, Lorg/spongycastle/math/raw/Nat256;->ˎ([II[II)V

    .line 30
    const/16 v0, 0x8

    const/16 v1, 0x10

    invoke-static {p1, v0, p1, v1}, Lorg/spongycastle/math/raw/Nat256;->ˊ([II[II)I

    move-result v6

    .line 31
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {p1, v0, p1, v1, v2}, Lorg/spongycastle/math/raw/Nat256;->ˊ([II[III)I

    move-result v0

    add-int v7, v6, v0

    .line 32
    const/16 v0, 0x18

    const/16 v1, 0x10

    invoke-static {p1, v0, p1, v1, v7}, Lorg/spongycastle/math/raw/Nat256;->ˊ([II[III)I

    move-result v0

    add-int/2addr v6, v0

    .line 34
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v8

    .line 35
    move-object v0, p0

    move-object v2, p0

    move-object v4, v8

    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat256;->ˊ([II[II[II)Z

    .line 37
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qw()[I

    move-result-object v9

    .line 38
    invoke-static {v8, v9}, Lorg/spongycastle/math/raw/Nat256;->ι([I[I)V

    .line 40
    const/16 v0, 0x10

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v9, v1, p1, v2}, Lorg/spongycastle/math/raw/Nat;->ʻ(I[II[II)I

    move-result v0

    add-int/2addr v6, v0

    .line 41
    const/16 v0, 0x20

    const/16 v1, 0x18

    invoke-static {v0, v6, p1, v1}, Lorg/spongycastle/math/raw/Nat;->ˊ(II[II)I

    .line 42
    return-void
.end method
