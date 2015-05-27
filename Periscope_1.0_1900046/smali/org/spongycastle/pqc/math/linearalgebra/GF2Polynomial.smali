.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static biO:Ljava/util/Random;

.field private static final biP:[Z

.field private static final biQ:[S

.field private static final biR:[I

.field private static final biS:[I


# instance fields
.field private biM:I

.field private biN:[I

.field private len:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biO:Ljava/util/Random;

    .line 32
    const/16 v0, 0x100

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biP:[Z

    .line 61
    const/16 v0, 0x100

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biQ:[S

    .line 96
    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biR:[I

    .line 105
    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biS:[I

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x4s
        0x5s
        0x10s
        0x11s
        0x14s
        0x15s
        0x40s
        0x41s
        0x44s
        0x45s
        0x50s
        0x51s
        0x54s
        0x55s
        0x100s
        0x101s
        0x104s
        0x105s
        0x110s
        0x111s
        0x114s
        0x115s
        0x140s
        0x141s
        0x144s
        0x145s
        0x150s
        0x151s
        0x154s
        0x155s
        0x400s
        0x401s
        0x404s
        0x405s
        0x410s
        0x411s
        0x414s
        0x415s
        0x440s
        0x441s
        0x444s
        0x445s
        0x450s
        0x451s
        0x454s
        0x455s
        0x500s
        0x501s
        0x504s
        0x505s
        0x510s
        0x511s
        0x514s
        0x515s
        0x540s
        0x541s
        0x544s
        0x545s
        0x550s
        0x551s
        0x554s
        0x555s
        0x1000s
        0x1001s
        0x1004s
        0x1005s
        0x1010s
        0x1011s
        0x1014s
        0x1015s
        0x1040s
        0x1041s
        0x1044s
        0x1045s
        0x1050s
        0x1051s
        0x1054s
        0x1055s
        0x1100s
        0x1101s
        0x1104s
        0x1105s
        0x1110s
        0x1111s
        0x1114s
        0x1115s
        0x1140s
        0x1141s
        0x1144s
        0x1145s
        0x1150s
        0x1151s
        0x1154s
        0x1155s
        0x1400s
        0x1401s
        0x1404s
        0x1405s
        0x1410s
        0x1411s
        0x1414s
        0x1415s
        0x1440s
        0x1441s
        0x1444s
        0x1445s
        0x1450s
        0x1451s
        0x1454s
        0x1455s
        0x1500s
        0x1501s
        0x1504s
        0x1505s
        0x1510s
        0x1511s
        0x1514s
        0x1515s
        0x1540s
        0x1541s
        0x1544s
        0x1545s
        0x1550s
        0x1551s
        0x1554s
        0x1555s
        0x4000s
        0x4001s
        0x4004s
        0x4005s
        0x4010s
        0x4011s
        0x4014s
        0x4015s
        0x4040s
        0x4041s
        0x4044s
        0x4045s
        0x4050s
        0x4051s
        0x4054s
        0x4055s
        0x4100s
        0x4101s
        0x4104s
        0x4105s
        0x4110s
        0x4111s
        0x4114s
        0x4115s
        0x4140s
        0x4141s
        0x4144s
        0x4145s
        0x4150s
        0x4151s
        0x4154s
        0x4155s
        0x4400s
        0x4401s
        0x4404s
        0x4405s
        0x4410s
        0x4411s
        0x4414s
        0x4415s
        0x4440s
        0x4441s
        0x4444s
        0x4445s
        0x4450s
        0x4451s
        0x4454s
        0x4455s
        0x4500s
        0x4501s
        0x4504s
        0x4505s
        0x4510s
        0x4511s
        0x4514s
        0x4515s
        0x4540s
        0x4541s
        0x4544s
        0x4545s
        0x4550s
        0x4551s
        0x4554s
        0x4555s
        0x5000s
        0x5001s
        0x5004s
        0x5005s
        0x5010s
        0x5011s
        0x5014s
        0x5015s
        0x5040s
        0x5041s
        0x5044s
        0x5045s
        0x5050s
        0x5051s
        0x5054s
        0x5055s
        0x5100s
        0x5101s
        0x5104s
        0x5105s
        0x5110s
        0x5111s
        0x5114s
        0x5115s
        0x5140s
        0x5141s
        0x5144s
        0x5145s
        0x5150s
        0x5151s
        0x5154s
        0x5155s
        0x5400s
        0x5401s
        0x5404s
        0x5405s
        0x5410s
        0x5411s
        0x5414s
        0x5415s
        0x5440s
        0x5441s
        0x5444s
        0x5445s
        0x5450s
        0x5451s
        0x5454s
        0x5455s
        0x5500s
        0x5501s
        0x5504s
        0x5505s
        0x5510s
        0x5511s
        0x5514s
        0x5515s
        0x5540s
        0x5541s
        0x5544s
        0x5545s
        0x5550s
        0x5551s
        0x5554s
        0x5555s
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000    # 2.0f
        -0x80000000
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
        0x1ffff
        0x3ffff
        0x7ffff
        0xfffff
        0x1fffff
        0x3fffff
        0x7fffff
        0xffffff
        0x1ffffff
        0x3ffffff
        0x7ffffff
        0xfffffff
        0x1fffffff
        0x3fffffff    # 1.9999999f
        0x7fffffff
        -0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    move v2, p1

    .line 122
    const/4 v0, 0x1

    if-ge v2, v0, :cond_0

    .line 124
    const/4 v2, 0x1

    .line 126
    :cond_0
    add-int/lit8 v0, v2, -0x1

    shr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    .line 127
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    .line 128
    iput v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 129
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    move v3, p1

    .line 167
    const/4 v0, 0x1

    if-ge v3, v0, :cond_0

    .line 169
    const/4 v3, 0x1

    .line 171
    :cond_0
    add-int/lit8 v0, v3, -0x1

    shr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    .line 172
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    .line 173
    iput v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 174
    const-string v0, "ZERO"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->sj()V

    goto :goto_0

    .line 178
    :cond_1
    const-string v0, "ONE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->sg()V

    goto :goto_0

    .line 182
    :cond_2
    const-string v0, "RANDOM"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->sk()V

    goto :goto_0

    .line 186
    :cond_3
    const-string v0, "X"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->sh()V

    goto :goto_0

    .line 190
    :cond_4
    const-string v0, "ALL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->si()V

    goto :goto_0

    .line 196
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: GF2Polynomial was called using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as value!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :goto_0
    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 5

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    move v3, p1

    .line 213
    const/4 v0, 0x1

    if-ge v3, v0, :cond_0

    .line 215
    const/4 v3, 0x1

    .line 217
    :cond_0
    add-int/lit8 v0, v3, -0x1

    shr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    .line 218
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    .line 219
    iput v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 220
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 221
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p2, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->so()V

    .line 223
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 1

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 328
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    .line 329
    iget-object v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->י([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    .line 330
    return-void
.end method

.method private so()V
    .locals 6

    .line 1723
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v0, v0, 0x1f

    if-eqz v0, :cond_0

    .line 1725
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biS:[I

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v4, v4, 0x1f

    aget v3, v3, v4

    and-int/2addr v2, v3

    aput v2, v0, v1

    .line 1727
    :cond_0
    return-void
.end method

.method private ڗ(I)V
    .locals 4

    .line 1975
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    array-length v1, v1

    if-gt v0, v1, :cond_2

    .line 1978
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-lt v3, p1, :cond_0

    .line 1980
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    sub-int v2, v3, p1

    aget v1, v1, v2

    aput v1, v0, v3

    .line 1978
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1982
    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_1

    .line 1984
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    const/4 v1, 0x0

    aput v1, v0, v3

    .line 1982
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1986
    :cond_1
    goto :goto_2

    .line 1989
    :cond_2
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    new-array v3, v0, [I

    .line 1990
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v2, v3, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1991
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    .line 1992
    iput-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    .line 1994
    :goto_2
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 337
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 549
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    if-nez v0, :cond_1

    .line 551
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 554
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-object v2, v0

    .line 556
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-eq v0, v1, :cond_2

    .line 558
    const/4 v0, 0x0

    return v0

    .line 560
    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    if-ge v3, v0, :cond_4

    .line 562
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v0, v0, v3

    iget-object v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v1, v3

    if-eq v0, v1, :cond_3

    .line 564
    const/4 v0, 0x0

    return v0

    .line 560
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 567
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 575
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isZero()Z
    .locals 2

    .line 586
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-nez v0, :cond_0

    .line 588
    const/4 v0, 0x1

    return v0

    .line 590
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    if-ge v1, v0, :cond_2

    .line 592
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v0, v0, v1

    if-eqz v0, :cond_1

    .line 594
    const/4 v0, 0x0

    return v0

    .line 590
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 597
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public pA()Z
    .locals 3

    .line 608
    const/4 v2, 0x1

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    if-ge v2, v0, :cond_1

    .line 610
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v0, v0, v2

    if-eqz v0, :cond_0

    .line 612
    const/4 v0, 0x0

    return v0

    .line 608
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 615
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 617
    const/4 v0, 0x0

    return v0

    .line 619
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public sg()V
    .locals 4

    .line 465
    const/4 v3, 0x1

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    if-ge v3, v0, :cond_0

    .line 467
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    const/4 v1, 0x0

    aput v1, v0, v3

    .line 465
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 469
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 470
    return-void
.end method

.method public sh()V
    .locals 4

    .line 478
    const/4 v3, 0x1

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    if-ge v3, v0, :cond_0

    .line 480
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    const/4 v1, 0x0

    aput v1, v0, v3

    .line 478
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 482
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 483
    return-void
.end method

.method public si()V
    .locals 3

    .line 491
    const/4 v2, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    if-ge v2, v0, :cond_0

    .line 493
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    const/4 v1, -0x1

    aput v1, v0, v2

    .line 491
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 495
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->so()V

    .line 496
    return-void
.end method

.method public sj()V
    .locals 3

    .line 504
    const/4 v2, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    if-ge v2, v0, :cond_0

    .line 506
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    const/4 v1, 0x0

    aput v1, v0, v2

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 508
    :cond_0
    return-void
.end method

.method public sk()V
    .locals 3

    .line 516
    const/4 v2, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    if-ge v2, v0, :cond_0

    .line 518
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    sget-object v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biO:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    aput v1, v0, v2

    .line 516
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 520
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->so()V

    .line 521
    return-void
.end method

.method public sl()Z
    .locals 9

    .line 1353
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1355
    const/4 v0, 0x0

    return v0

    .line 1357
    :cond_0
    new-instance v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v3, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1361
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->sm()V

    .line 1362
    iget v0, v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v4, v0, -0x1

    .line 1363
    new-instance v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const-string v1, "X"

    invoke-direct {v6, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    .line 1365
    const/4 v5, 0x1

    :goto_0
    shr-int/lit8 v0, v4, 0x1

    if-gt v5, v0, :cond_3

    .line 1367
    invoke-virtual {v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->sn()V

    .line 1368
    invoke-virtual {v6, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ˏ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v6

    .line 1369
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const-string v1, "X"

    const/16 v2, 0x20

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ˋ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v8

    .line 1370
    invoke-virtual {v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1372
    invoke-virtual {v3, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ᐝ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v7

    .line 1373
    invoke-virtual {v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->pA()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1375
    const/4 v0, 0x0

    return v0

    .line 1380
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1365
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1384
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public sm()V
    .locals 5

    .line 1502
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    add-int/lit8 v2, v0, -0x1

    .line 1503
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v0, v0, v2

    if-nez v0, :cond_0

    if-lez v2, :cond_0

    .line 1505
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1507
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v4, v0, v2

    .line 1508
    const/4 v3, 0x0

    .line 1509
    :goto_1
    if-eqz v4, :cond_1

    .line 1511
    ushr-int/lit8 v4, v4, 0x1

    .line 1512
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1514
    :cond_1
    shl-int/lit8 v0, v2, 0x5

    add-int/2addr v0, v3

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 1515
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    .line 1516
    return-void
.end method

.method public sn()V
    .locals 8

    .line 1601
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1603
    return-void

    .line 1605
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    array-length v0, v0

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    shl-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_2

    .line 1607
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    add-int/lit8 v6, v0, -0x1

    :goto_0
    if-ltz v6, :cond_1

    .line 1609
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    shl-int/lit8 v1, v6, 0x1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biQ:[S

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v3, v3, v6

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    ushr-int/lit8 v3, v3, 0x10

    aget-short v2, v2, v3

    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biQ:[S

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v4, v4, v6

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x18

    aget-short v3, v3, v4

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 1611
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    shl-int/lit8 v1, v6, 0x1

    sget-object v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biQ:[S

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    aget-short v2, v2, v3

    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biQ:[S

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v4, v4, v6

    const v5, 0xff00

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x8

    aget-short v3, v3, v4

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 1607
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1614
    :cond_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    .line 1615
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    goto/16 :goto_2

    .line 1619
    :cond_2
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    shl-int/lit8 v0, v0, 0x1

    new-array v7, v0, [I

    .line 1620
    const/4 v6, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    if-ge v6, v0, :cond_3

    .line 1622
    shl-int/lit8 v0, v6, 0x1

    sget-object v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biQ:[S

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    aget-short v1, v1, v2

    sget-object v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biQ:[S

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v3, v3, v6

    const v4, 0xff00

    and-int/2addr v3, v4

    ushr-int/lit8 v3, v3, 0x8

    aget-short v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aput v1, v7, v0

    .line 1624
    shl-int/lit8 v0, v6, 0x1

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biQ:[S

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v2, v2, v6

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x10

    aget-short v1, v1, v2

    sget-object v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biQ:[S

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v3, v3, v6

    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    ushr-int/lit8 v3, v3, 0x18

    aget-short v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aput v1, v7, v0

    .line 1620
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1627
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    .line 1628
    iput-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    .line 1629
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    .line 1630
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 1632
    :goto_2
    return-void
.end method

.method public sp()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 6

    .line 1829
    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    invoke-direct {v4, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    .line 1831
    iget v0, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    add-int/lit8 v5, v0, -0x1

    :goto_0
    const/4 v0, 0x1

    if-lt v5, v0, :cond_0

    .line 1833
    iget-object v0, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v0, v5

    shl-int/lit8 v1, v1, 0x1

    aput v1, v0, v5

    .line 1834
    iget-object v0, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v0, v5

    iget-object v2, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    add-int/lit8 v3, v5, -0x1

    aget v2, v2, v3

    ushr-int/lit8 v2, v2, 0x1f

    or-int/2addr v1, v2

    aput v1, v0, v5

    .line 1831
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1836
    :cond_0
    iget-object v0, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    shl-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1837
    return-object v4
.end method

.method public toString(I)Ljava/lang/String;
    .locals 7

    .line 373
    const/16 v0, 0x10

    new-array v3, v0, [C

    fill-array-data v3, :array_0

    .line 375
    const/16 v0, 0x10

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "0000"

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const-string v0, "0001"

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const-string v0, "0010"

    const/4 v1, 0x2

    aput-object v0, v4, v1

    const-string v0, "0011"

    const/4 v1, 0x3

    aput-object v0, v4, v1

    const-string v0, "0100"

    const/4 v1, 0x4

    aput-object v0, v4, v1

    const-string v0, "0101"

    const/4 v1, 0x5

    aput-object v0, v4, v1

    const-string v0, "0110"

    const/4 v1, 0x6

    aput-object v0, v4, v1

    const-string v0, "0111"

    const/4 v1, 0x7

    aput-object v0, v4, v1

    const-string v0, "1000"

    const/16 v1, 0x8

    aput-object v0, v4, v1

    const-string v0, "1001"

    const/16 v1, 0x9

    aput-object v0, v4, v1

    const-string v0, "1010"

    const/16 v1, 0xa

    aput-object v0, v4, v1

    const-string v0, "1011"

    const/16 v1, 0xb

    aput-object v0, v4, v1

    const-string v0, "1100"

    const/16 v1, 0xc

    aput-object v0, v4, v1

    const-string v0, "1101"

    const/16 v1, 0xd

    aput-object v0, v4, v1

    const-string v0, "1110"

    const/16 v1, 0xe

    aput-object v0, v4, v1

    const-string v0, "1111"

    const/16 v1, 0xf

    aput-object v0, v4, v1

    .line 380
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 381
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 383
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    add-int/lit8 v6, v0, -0x1

    :goto_0
    if-ltz v6, :cond_1

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v1, v6

    ushr-int/lit8 v1, v1, 0x1c

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v1, v6

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v1, v6

    ushr-int/lit8 v1, v1, 0x14

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v1, v6

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v1, v6

    ushr-int/lit8 v1, v1, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v1, v6

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v1, v6

    ushr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v1, v6

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 383
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    .line 398
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    add-int/lit8 v6, v0, -0x1

    :goto_1
    if-ltz v6, :cond_1

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v1, v6

    ushr-int/lit8 v1, v1, 0x1c

    and-int/lit8 v1, v1, 0xf

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v1, v6

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit8 v1, v1, 0xf

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v1, v6

    ushr-int/lit8 v1, v1, 0x14

    and-int/lit8 v1, v1, 0xf

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v1, v6

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit8 v1, v1, 0xf

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v1, v6

    ushr-int/lit8 v1, v1, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v1, v6

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit8 v1, v1, 0xf

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v1, v6

    ushr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v1, v6

    and-int/lit8 v1, v1, 0xf

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 398
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1

    .line 411
    :cond_1
    return-object v5

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public ʻ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 6

    .line 1674
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    iget v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1675
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-lt v0, v1, :cond_0

    .line 1677
    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v4, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1678
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    .line 1680
    iget-object v0, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v0, v3

    iget-object v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v2, v2, v3

    xor-int/2addr v1, v2

    aput v1, v0, v3

    .line 1678
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1685
    :cond_0
    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v4, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1686
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    .line 1688
    iget-object v0, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v0, v3

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v2, v2, v3

    xor-int/2addr v1, v2

    aput v1, v0, v3

    .line 1686
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1693
    :cond_1
    invoke-direct {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->so()V

    .line 1694
    return-object v4
.end method

.method public ʼ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 4

    .line 1707
    const/4 v3, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    iget v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 1709
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v0, v3

    iget-object v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v2, v2, v3

    xor-int/2addr v1, v2

    aput v1, v0, v3

    .line 1707
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1713
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->so()V

    .line 1714
    return-void
.end method

.method public ˊ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 1

    .line 630
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->װ(I)V

    .line 631
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ʼ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 632
    return-void
.end method

.method public ˋ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 1

    .line 643
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ʻ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    return-object v0
.end method

.method public ˎ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 1

    .line 654
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->װ(I)V

    .line 655
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ʼ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 656
    return-void
.end method

.method public ˏ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 6

    .line 1188
    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v2, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1189
    new-instance v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v3, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1192
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 1196
    :cond_0
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->sm()V

    .line 1197
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->sm()V

    .line 1198
    iget v0, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v1, v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-ge v0, v1, :cond_1

    .line 1200
    return-object v2

    .line 1202
    :cond_1
    iget v0, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v1, v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    sub-int v5, v0, v1

    .line 1203
    :goto_0
    if-ltz v5, :cond_2

    .line 1205
    invoke-virtual {v3, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ږ(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    .line 1206
    invoke-virtual {v2, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ˎ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1207
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->sm()V

    .line 1208
    iget v0, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v1, v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    sub-int v5, v0, v1

    goto :goto_0

    .line 1210
    :cond_2
    return-object v2
.end method

.method public װ(I)V
    .locals 7

    .line 1528
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-lt v0, p1, :cond_0

    .line 1530
    return-void

    .line 1532
    :cond_0
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    .line 1533
    add-int/lit8 v0, p1, -0x1

    ushr-int/lit8 v0, v0, 0x5

    add-int/lit8 v4, v0, 0x1

    .line 1534
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    if-lt v0, v4, :cond_1

    .line 1536
    return-void

    .line 1538
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    array-length v0, v0

    if-lt v0, v4, :cond_3

    .line 1541
    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    :goto_0
    if-ge v6, v4, :cond_2

    .line 1543
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    const/4 v1, 0x0

    aput v1, v0, v6

    .line 1541
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1545
    :cond_2
    iput v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    .line 1546
    return-void

    .line 1548
    :cond_3
    new-array v5, v4, [I

    .line 1549
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1550
    iput v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    .line 1551
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    .line 1552
    iput-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    .line 1553
    return-void
.end method

.method public ه(I)V
    .locals 5

    .line 1738
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 1740
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 1742
    :cond_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    .line 1744
    return-void

    .line 1746
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    ushr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biR:[I

    and-int/lit8 v4, p1, 0x1f

    aget v3, v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 1747
    return-void
.end method

.method public ډ(I)V
    .locals 5

    .line 1775
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 1777
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 1779
    :cond_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    .line 1781
    return-void

    .line 1783
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    ushr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biR:[I

    and-int/lit8 v4, p1, 0x1f

    aget v3, v3, v4

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aput v2, v0, v1

    .line 1784
    return-void
.end method

.method public ږ(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 7

    .line 1890
    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    invoke-direct {v4, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    .line 1892
    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    .line 1894
    ushr-int/lit8 v0, p1, 0x5

    invoke-direct {v4, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ڗ(I)V

    .line 1897
    :cond_0
    and-int/lit8 v5, p1, 0x1f

    .line 1898
    if-eqz v5, :cond_2

    .line 1900
    iget v0, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biM:I

    add-int/lit8 v6, v0, -0x1

    :goto_0
    const/4 v0, 0x1

    if-lt v6, v0, :cond_1

    .line 1902
    iget-object v0, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v0, v6

    shl-int/2addr v1, v5

    aput v1, v0, v6

    .line 1903
    iget-object v0, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    aget v1, v0, v6

    iget-object v2, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    add-int/lit8 v3, v6, -0x1

    aget v2, v2, v3

    rsub-int/lit8 v3, v5, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v6

    .line 1900
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1905
    :cond_1
    iget-object v0, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->biN:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    shl-int/2addr v1, v5

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1907
    :cond_2
    return-object v4
.end method

.method public ᐝ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 5

    .line 1314
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1316
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Both operands of gcd equal zero."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1318
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1320
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0

    .line 1322
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1324
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0

    .line 1326
    :cond_2
    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v2, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1327
    new-instance v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v3, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 1330
    :goto_0
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1332
    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->ˏ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    .line 1333
    move-object v2, v3

    .line 1334
    move-object v3, v4

    goto :goto_0

    .line 1337
    :cond_3
    return-object v2
.end method
