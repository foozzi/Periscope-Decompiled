.class public Lorg/spongycastle/crypto/engines/GOST28147Engine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field private static aKd:[B

.field private static aKe:[B

.field private static aKf:[B

.field private static aKg:[B

.field private static aKh:[B

.field private static aKi:[B

.field private static aKj:[B

.field private static aKk:[B

.field private static aKl:Ljava/util/Hashtable;


# instance fields
.field private aEW:Z

.field private aGd:[B

.field private aJE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aKd:[B

    .line 44
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aKe:[B

    .line 55
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aKf:[B

    .line 66
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aKg:[B

    .line 77
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aKh:[B

    .line 88
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aKi:[B

    .line 100
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    sput-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aKj:[B

    .line 111
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    sput-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aKk:[B

    .line 125
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aKl:Ljava/util/Hashtable;

    .line 129
    const-string v0, "Default"

    sget-object v1, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aKd:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ˋ(Ljava/lang/String;[B)V

    .line 130
    const-string v0, "E-TEST"

    sget-object v1, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aKe:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ˋ(Ljava/lang/String;[B)V

    .line 131
    const-string v0, "E-A"

    sget-object v1, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aKf:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ˋ(Ljava/lang/String;[B)V

    .line 132
    const-string v0, "E-B"

    sget-object v1, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aKg:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ˋ(Ljava/lang/String;[B)V

    .line 133
    const-string v0, "E-C"

    sget-object v1, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aKh:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ˋ(Ljava/lang/String;[B)V

    .line 134
    const-string v0, "E-D"

    sget-object v1, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aKi:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ˋ(Ljava/lang/String;[B)V

    .line 135
    const-string v0, "D-TEST"

    sget-object v1, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aKj:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ˋ(Ljava/lang/String;[B)V

    .line 136
    const-string v0, "D-A"

    sget-object v1, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aKk:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ˋ(Ljava/lang/String;[B)V

    .line 137
    return-void

    :array_0
    .array-data 1
        0x4t
        0xat
        0x9t
        0x2t
        0xdt
        0x8t
        0x0t
        0xet
        0x6t
        0xbt
        0x1t
        0xct
        0x7t
        0xft
        0x5t
        0x3t
        0xet
        0xbt
        0x4t
        0xct
        0x6t
        0xdt
        0xft
        0xat
        0x2t
        0x3t
        0x8t
        0x1t
        0x0t
        0x7t
        0x5t
        0x9t
        0x5t
        0x8t
        0x1t
        0xdt
        0xat
        0x3t
        0x4t
        0x2t
        0xet
        0xft
        0xct
        0x7t
        0x6t
        0x0t
        0x9t
        0xbt
        0x7t
        0xdt
        0xat
        0x1t
        0x0t
        0x8t
        0x9t
        0xft
        0xet
        0x4t
        0x6t
        0xct
        0xbt
        0x2t
        0x5t
        0x3t
        0x6t
        0xct
        0x7t
        0x1t
        0x5t
        0xft
        0xdt
        0x8t
        0x4t
        0xat
        0x9t
        0xet
        0x0t
        0x3t
        0xbt
        0x2t
        0x4t
        0xbt
        0xat
        0x0t
        0x7t
        0x2t
        0x1t
        0xdt
        0x3t
        0x6t
        0x8t
        0x5t
        0x9t
        0xct
        0xft
        0xet
        0xdt
        0xbt
        0x4t
        0x1t
        0x3t
        0xft
        0x5t
        0x9t
        0x0t
        0xat
        0xet
        0x7t
        0x6t
        0x8t
        0x2t
        0xct
        0x1t
        0xft
        0xdt
        0x0t
        0x5t
        0x7t
        0xat
        0x4t
        0x9t
        0x2t
        0x3t
        0xet
        0x6t
        0xbt
        0x8t
        0xct
    .end array-data

    :array_1
    .array-data 1
        0x4t
        0x2t
        0xft
        0x5t
        0x9t
        0x1t
        0x0t
        0x8t
        0xet
        0x3t
        0xbt
        0xct
        0xdt
        0x7t
        0xat
        0x6t
        0xct
        0x9t
        0xft
        0xet
        0x8t
        0x1t
        0x3t
        0xat
        0x2t
        0x7t
        0x4t
        0xdt
        0x6t
        0x0t
        0xbt
        0x5t
        0xdt
        0x8t
        0xet
        0xct
        0x7t
        0x3t
        0x9t
        0xat
        0x1t
        0x5t
        0x2t
        0x4t
        0x6t
        0xft
        0x0t
        0xbt
        0xet
        0x9t
        0xbt
        0x2t
        0x5t
        0xft
        0x7t
        0x1t
        0x0t
        0xdt
        0xct
        0x6t
        0xat
        0x4t
        0x3t
        0x8t
        0x3t
        0xet
        0x5t
        0x9t
        0x6t
        0x8t
        0x0t
        0xdt
        0xat
        0xbt
        0x7t
        0xct
        0x2t
        0x1t
        0xft
        0x4t
        0x8t
        0xft
        0x6t
        0xbt
        0x1t
        0x9t
        0xct
        0x5t
        0xdt
        0x3t
        0x7t
        0xat
        0x0t
        0xet
        0x2t
        0x4t
        0x9t
        0xbt
        0xct
        0x0t
        0x3t
        0x6t
        0x7t
        0x5t
        0x4t
        0x8t
        0xet
        0xft
        0x1t
        0xat
        0x2t
        0xdt
        0xct
        0x6t
        0x5t
        0x2t
        0xbt
        0x0t
        0x9t
        0xdt
        0x3t
        0xet
        0x7t
        0xat
        0xft
        0x4t
        0x1t
        0x8t
    .end array-data

    :array_2
    .array-data 1
        0x9t
        0x6t
        0x3t
        0x2t
        0x8t
        0xbt
        0x1t
        0x7t
        0xat
        0x4t
        0xet
        0xft
        0xct
        0x0t
        0xdt
        0x5t
        0x3t
        0x7t
        0xet
        0x9t
        0x8t
        0xat
        0xft
        0x0t
        0x5t
        0x2t
        0x6t
        0xct
        0xbt
        0x4t
        0xdt
        0x1t
        0xet
        0x4t
        0x6t
        0x2t
        0xbt
        0x3t
        0xdt
        0x8t
        0xct
        0xft
        0x5t
        0xat
        0x0t
        0x7t
        0x1t
        0x9t
        0xet
        0x7t
        0xat
        0xct
        0xdt
        0x1t
        0x3t
        0x9t
        0x0t
        0x2t
        0xbt
        0x4t
        0xft
        0x8t
        0x5t
        0x6t
        0xbt
        0x5t
        0x1t
        0x9t
        0x8t
        0xdt
        0xft
        0x0t
        0xet
        0x4t
        0x2t
        0x3t
        0xct
        0x7t
        0xat
        0x6t
        0x3t
        0xat
        0xdt
        0xct
        0x1t
        0x2t
        0x0t
        0xbt
        0x7t
        0x5t
        0x9t
        0x4t
        0x8t
        0xft
        0xet
        0x6t
        0x1t
        0xdt
        0x2t
        0x9t
        0x7t
        0xat
        0x6t
        0x0t
        0x8t
        0xct
        0x4t
        0x5t
        0xft
        0x3t
        0xbt
        0xet
        0xbt
        0xat
        0xft
        0x5t
        0x0t
        0xct
        0xet
        0x8t
        0x6t
        0x2t
        0x3t
        0x9t
        0x1t
        0x7t
        0xdt
        0x4t
    .end array-data

    :array_3
    .array-data 1
        0x8t
        0x4t
        0xbt
        0x1t
        0x3t
        0x5t
        0x0t
        0x9t
        0x2t
        0xet
        0xat
        0xct
        0xdt
        0x6t
        0x7t
        0xft
        0x0t
        0x1t
        0x2t
        0xat
        0x4t
        0xdt
        0x5t
        0xct
        0x9t
        0x7t
        0x3t
        0xft
        0xbt
        0x8t
        0x6t
        0xet
        0xet
        0xct
        0x0t
        0xat
        0x9t
        0x2t
        0xdt
        0xbt
        0x7t
        0x5t
        0x8t
        0xft
        0x3t
        0x6t
        0x1t
        0x4t
        0x7t
        0x5t
        0x0t
        0xdt
        0xbt
        0x6t
        0x1t
        0x2t
        0x3t
        0xat
        0xct
        0xft
        0x4t
        0xet
        0x9t
        0x8t
        0x2t
        0x7t
        0xct
        0xft
        0x9t
        0x5t
        0xat
        0xbt
        0x1t
        0x4t
        0x0t
        0xdt
        0x6t
        0x8t
        0xet
        0x3t
        0x8t
        0x3t
        0x2t
        0x6t
        0x4t
        0xdt
        0xet
        0xbt
        0xct
        0x1t
        0x7t
        0xft
        0xat
        0x0t
        0x9t
        0x5t
        0x5t
        0x2t
        0xat
        0xbt
        0x9t
        0x1t
        0xct
        0x3t
        0x7t
        0x4t
        0xdt
        0x0t
        0x6t
        0xft
        0x8t
        0xet
        0x0t
        0x4t
        0xbt
        0xet
        0x8t
        0x3t
        0x7t
        0x1t
        0xat
        0x2t
        0x9t
        0x6t
        0xft
        0xdt
        0x5t
        0xct
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0xbt
        0xct
        0x2t
        0x9t
        0xdt
        0x0t
        0xft
        0x4t
        0x5t
        0x8t
        0xet
        0xat
        0x7t
        0x6t
        0x3t
        0x0t
        0x1t
        0x7t
        0xdt
        0xbt
        0x4t
        0x5t
        0x2t
        0x8t
        0xet
        0xft
        0xct
        0x9t
        0xat
        0x6t
        0x3t
        0x8t
        0x2t
        0x5t
        0x0t
        0x4t
        0x9t
        0xft
        0xat
        0x3t
        0x7t
        0xct
        0xdt
        0x6t
        0xet
        0x1t
        0xbt
        0x3t
        0x6t
        0x0t
        0x1t
        0x5t
        0xdt
        0xat
        0x8t
        0xbt
        0x2t
        0x9t
        0x7t
        0xet
        0xft
        0xct
        0x4t
        0x8t
        0xdt
        0xbt
        0x0t
        0x4t
        0x5t
        0x1t
        0x2t
        0x9t
        0x3t
        0xct
        0xet
        0x6t
        0xft
        0xat
        0x7t
        0xct
        0x9t
        0xbt
        0x1t
        0x8t
        0xet
        0x2t
        0x4t
        0x7t
        0x3t
        0x6t
        0x5t
        0xat
        0x0t
        0xft
        0xdt
        0xat
        0x9t
        0x6t
        0x8t
        0xdt
        0xet
        0x2t
        0x0t
        0xft
        0x3t
        0x5t
        0xbt
        0x4t
        0x1t
        0xct
        0x7t
        0x7t
        0x4t
        0x0t
        0x5t
        0xat
        0x2t
        0xft
        0xet
        0xct
        0x6t
        0x1t
        0xbt
        0xdt
        0x9t
        0x3t
        0x8t
    .end array-data

    :array_5
    .array-data 1
        0xft
        0xct
        0x2t
        0xat
        0x6t
        0x4t
        0x5t
        0x0t
        0x7t
        0x9t
        0xet
        0xdt
        0x1t
        0xbt
        0x8t
        0x3t
        0xbt
        0x6t
        0x3t
        0x4t
        0xct
        0xft
        0xet
        0x2t
        0x7t
        0xdt
        0x8t
        0x0t
        0x5t
        0xat
        0x9t
        0x1t
        0x1t
        0xct
        0xbt
        0x0t
        0xft
        0xet
        0x6t
        0x5t
        0xat
        0xdt
        0x4t
        0x8t
        0x9t
        0x3t
        0x7t
        0x2t
        0x1t
        0x5t
        0xet
        0xct
        0xat
        0x7t
        0x0t
        0xdt
        0x6t
        0x2t
        0xbt
        0x4t
        0x9t
        0x3t
        0xft
        0x8t
        0x0t
        0xct
        0x8t
        0x9t
        0xdt
        0x2t
        0xat
        0xbt
        0x7t
        0x3t
        0x6t
        0x5t
        0x4t
        0xet
        0xft
        0x1t
        0x8t
        0x0t
        0xft
        0x3t
        0x2t
        0x5t
        0xet
        0xbt
        0x1t
        0xat
        0x4t
        0x7t
        0xct
        0x9t
        0xdt
        0x6t
        0x3t
        0x0t
        0x6t
        0xft
        0x1t
        0xet
        0x9t
        0x2t
        0xdt
        0x8t
        0xct
        0x4t
        0xbt
        0xat
        0x5t
        0x7t
        0x1t
        0xat
        0x6t
        0x8t
        0xft
        0xbt
        0x0t
        0x4t
        0xct
        0x3t
        0x5t
        0x9t
        0x7t
        0xdt
        0x2t
        0xet
    .end array-data

    :array_6
    .array-data 1
        0x4t
        0xat
        0x9t
        0x2t
        0xdt
        0x8t
        0x0t
        0xet
        0x6t
        0xbt
        0x1t
        0xct
        0x7t
        0xft
        0x5t
        0x3t
        0xet
        0xbt
        0x4t
        0xct
        0x6t
        0xdt
        0xft
        0xat
        0x2t
        0x3t
        0x8t
        0x1t
        0x0t
        0x7t
        0x5t
        0x9t
        0x5t
        0x8t
        0x1t
        0xdt
        0xat
        0x3t
        0x4t
        0x2t
        0xet
        0xft
        0xct
        0x7t
        0x6t
        0x0t
        0x9t
        0xbt
        0x7t
        0xdt
        0xat
        0x1t
        0x0t
        0x8t
        0x9t
        0xft
        0xet
        0x4t
        0x6t
        0xct
        0xbt
        0x2t
        0x5t
        0x3t
        0x6t
        0xct
        0x7t
        0x1t
        0x5t
        0xft
        0xdt
        0x8t
        0x4t
        0xat
        0x9t
        0xet
        0x0t
        0x3t
        0xbt
        0x2t
        0x4t
        0xbt
        0xat
        0x0t
        0x7t
        0x2t
        0x1t
        0xdt
        0x3t
        0x6t
        0x8t
        0x5t
        0x9t
        0xct
        0xft
        0xet
        0xdt
        0xbt
        0x4t
        0x1t
        0x3t
        0xft
        0x5t
        0x9t
        0x0t
        0xat
        0xet
        0x7t
        0x6t
        0x8t
        0x2t
        0xct
        0x1t
        0xft
        0xdt
        0x0t
        0x5t
        0x7t
        0xat
        0x4t
        0x9t
        0x2t
        0x3t
        0xet
        0x6t
        0xbt
        0x8t
        0xct
    .end array-data

    :array_7
    .array-data 1
        0xat
        0x4t
        0x5t
        0x6t
        0x8t
        0x1t
        0x3t
        0x7t
        0xdt
        0xct
        0xet
        0x0t
        0x9t
        0x2t
        0xbt
        0xft
        0x5t
        0xft
        0x4t
        0x0t
        0x2t
        0xdt
        0xbt
        0x9t
        0x1t
        0x7t
        0x6t
        0x3t
        0xct
        0xet
        0xat
        0x8t
        0x7t
        0xft
        0xct
        0xet
        0x9t
        0x4t
        0x1t
        0x0t
        0x3t
        0xbt
        0x5t
        0x2t
        0x6t
        0xat
        0x8t
        0xdt
        0x4t
        0xat
        0x7t
        0xct
        0x0t
        0xft
        0x2t
        0x8t
        0xet
        0x1t
        0x6t
        0x5t
        0xdt
        0xbt
        0x9t
        0x3t
        0x7t
        0x6t
        0x4t
        0xbt
        0x9t
        0xct
        0x2t
        0xat
        0x1t
        0x8t
        0x0t
        0xet
        0xft
        0xdt
        0x3t
        0x5t
        0x7t
        0x6t
        0x2t
        0x4t
        0xdt
        0x9t
        0xft
        0x0t
        0xat
        0x1t
        0x5t
        0xbt
        0x8t
        0xet
        0xct
        0x3t
        0xdt
        0xet
        0x4t
        0x1t
        0x7t
        0x0t
        0x5t
        0xat
        0x3t
        0xct
        0x8t
        0xft
        0x6t
        0x2t
        0x9t
        0xbt
        0x1t
        0x3t
        0xat
        0x9t
        0x5t
        0xbt
        0x4t
        0xft
        0x8t
        0x6t
        0x7t
        0xet
        0xdt
        0x0t
        0x2t
        0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aJE:[I

    .line 24
    sget-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aKd:[B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aGd:[B

    .line 149
    return-void
.end method

.method private ʵ(II)I
    .locals 5

    .line 259
    add-int v3, p2, p1

    .line 263
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aGd:[B

    shr-int/lit8 v1, v3, 0x0

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x0

    aget-byte v0, v0, v1

    shl-int/lit8 v4, v0, 0x0

    .line 264
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aGd:[B

    shr-int/lit8 v1, v3, 0x4

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x10

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v4, v0

    .line 265
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aGd:[B

    shr-int/lit8 v1, v3, 0x8

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x20

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v4, v0

    .line 266
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aGd:[B

    shr-int/lit8 v1, v3, 0xc

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x30

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0xc

    add-int/2addr v4, v0

    .line 267
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aGd:[B

    shr-int/lit8 v1, v3, 0x10

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x40

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr v4, v0

    .line 268
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aGd:[B

    shr-int/lit8 v1, v3, 0x14

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x50

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x14

    add-int/2addr v4, v0

    .line 269
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aGd:[B

    shr-int/lit8 v1, v3, 0x18

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x60

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    add-int/2addr v4, v0

    .line 270
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aGd:[B

    shr-int/lit8 v1, v3, 0x1c

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x70

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x1c

    add-int/2addr v4, v0

    .line 272
    shl-int/lit8 v0, v4, 0xb

    ushr-int/lit8 v1, v4, 0x15

    or-int/2addr v0, v1

    return v0
.end method

.method private static ˋ(Ljava/lang/String;[B)V
    .locals 2

    .line 141
    sget-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aKl:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->ʟ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method

.method private ˋ([I[BI[BI)V
    .locals 6

    .line 283
    invoke-direct {p0, p2, p3}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ـ([BI)I

    move-result v1

    .line 284
    add-int/lit8 v0, p3, 0x4

    invoke-direct {p0, p2, v0}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ـ([BI)I

    move-result v2

    .line 286
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aEW:Z

    if-eqz v0, :cond_3

    .line 288
    const/4 v4, 0x0

    :goto_0
    const/4 v0, 0x3

    if-ge v4, v0, :cond_1

    .line 290
    const/4 v5, 0x0

    :goto_1
    const/16 v0, 0x8

    if-ge v5, v0, :cond_0

    .line 292
    move v3, v1

    .line 293
    aget v0, p1, v5

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ʵ(II)I

    move-result v0

    xor-int v1, v2, v0

    .line 294
    move v2, v3

    .line 290
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 288
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 297
    :cond_1
    const/4 v4, 0x7

    :goto_2
    if-lez v4, :cond_2

    .line 299
    move v3, v1

    .line 300
    aget v0, p1, v4

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ʵ(II)I

    move-result v0

    xor-int v1, v2, v0

    .line 301
    move v2, v3

    .line 297
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    goto :goto_7

    .line 306
    :cond_3
    const/4 v4, 0x0

    :goto_3
    const/16 v0, 0x8

    if-ge v4, v0, :cond_4

    .line 308
    move v3, v1

    .line 309
    aget v0, p1, v4

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ʵ(II)I

    move-result v0

    xor-int v1, v2, v0

    .line 310
    move v2, v3

    .line 306
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 312
    :cond_4
    const/4 v4, 0x0

    :goto_4
    const/4 v0, 0x3

    if-ge v4, v0, :cond_7

    .line 314
    const/4 v5, 0x7

    :goto_5
    if-ltz v5, :cond_6

    .line 316
    const/4 v0, 0x2

    if-ne v4, v0, :cond_5

    if-nez v5, :cond_5

    .line 318
    goto :goto_6

    .line 320
    :cond_5
    move v3, v1

    .line 321
    aget v0, p1, v5

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ʵ(II)I

    move-result v0

    xor-int v1, v2, v0

    .line 322
    move v2, v3

    .line 314
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 312
    :cond_6
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 327
    :cond_7
    :goto_7
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ʵ(II)I

    move-result v0

    xor-int/2addr v2, v0

    .line 329
    invoke-direct {p0, v1, p4, p5}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ˏ(I[BI)V

    .line 330
    add-int/lit8 v0, p5, 0x4

    invoke-direct {p0, v2, p4, v0}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ˏ(I[BI)V

    .line 331
    return-void
.end method

.method private ˋ(Z[B)[I
    .locals 4

    .line 241
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aEW:Z

    .line 243
    array-length v0, p2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key length invalid. Key needs to be 32 byte - 256 bit!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    const/16 v0, 0x8

    new-array v2, v0, [I

    .line 249
    const/4 v3, 0x0

    :goto_0
    const/16 v0, 0x8

    if-eq v3, v0, :cond_1

    .line 251
    mul-int/lit8 v0, v3, 0x4

    invoke-direct {p0, p2, v0}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ـ([BI)I

    move-result v0

    aput v0, v2, v3

    .line 249
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 254
    :cond_1
    return-object v2
.end method

.method private ˏ(I[BI)V
    .locals 2

    .line 348
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 349
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 350
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 351
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 352
    return-void
.end method

.method private ـ([BI)I
    .locals 3

    .line 338
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public static ᓒ(Ljava/lang/String;)[B
    .locals 3

    .line 362
    sget-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aKl:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->ʟ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    move-object v2, v0

    .line 364
    if-nez v2, :cond_0

    .line 366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown S-Box - possible types: \"Default\", \"E-Test\", \"E-A\", \"E-B\", \"E-C\", \"E-D\", \"D-Test\", \"D-A\"."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_0
    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 204
    const/16 v0, 0x8

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 199
    const-string v0, "GOST28147"

    return-object v0
.end method

.method public reset()V
    .locals 0

    .line 235
    return-void
.end method

.method public ˊ([BI[BI)I
    .locals 6

    .line 213
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aJE:[I

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GOST28147 engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 220
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 225
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_2
    move-object v0, p0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aJE:[I

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ˋ([I[BI[BI)V

    .line 230
    const/16 v0, 0x8

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 5

    .line 163
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    if-eqz v0, :cond_2

    .line 165
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    move-object v3, v0

    .line 170
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ParametersWithSBox;->li()[B

    move-result-object v4

    .line 171
    array-length v0, v4

    sget-object v1, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aKd:[B

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid S-box passed to GOST28147 init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    invoke-static {v4}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aGd:[B

    .line 180
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ParametersWithSBox;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ParametersWithSBox;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ˋ(Z[B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aJE:[I

    .line 185
    :cond_1
    goto :goto_0

    .line 186
    :cond_2
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_3

    .line 188
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ˋ(Z[B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->aJE:[I

    goto :goto_0

    .line 191
    :cond_3
    if-eqz p2, :cond_4

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to GOST28147 init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_4
    :goto_0
    return-void
.end method
