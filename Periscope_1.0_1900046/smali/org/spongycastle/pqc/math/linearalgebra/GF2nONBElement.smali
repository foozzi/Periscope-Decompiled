.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;
.super Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
.source ""


# static fields
.field private static final bja:[J

.field private static final bjb:[J

.field private static final bjc:[I


# instance fields
.field private bjd:I

.field private bje:[J

.field private mLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 23
    const/16 v0, 0x40

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->bja:[J

    .line 46
    const/16 v0, 0x40

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->bjb:[J

    .line 73
    const/16 v0, 0x180

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->bjc:[I

    return-void

    :array_0
    .array-data 8
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
        0x40000000
        0x80000000L
        0x100000000L
        0x200000000L
        0x400000000L
        0x800000000L
        0x1000000000L
        0x2000000000L
        0x4000000000L
        0x8000000000L
        0x10000000000L
        0x20000000000L
        0x40000000000L
        0x80000000000L
        0x100000000000L
        0x200000000000L
        0x400000000000L
        0x800000000000L
        0x1000000000000L
        0x2000000000000L
        0x4000000000000L
        0x8000000000000L
        0x10000000000000L
        0x20000000000000L
        0x40000000000000L
        0x80000000000000L
        0x100000000000000L
        0x200000000000000L
        0x400000000000000L
        0x800000000000000L
        0x1000000000000000L
        0x2000000000000000L
        0x4000000000000000L    # 2.0
        -0x8000000000000000L
    .end array-data

    :array_1
    .array-data 8
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
        0x3fffffff
        0x7fffffff
        0xffffffffL
        0x1ffffffffL
        0x3ffffffffL
        0x7ffffffffL
        0xfffffffffL
        0x1fffffffffL
        0x3fffffffffL
        0x7fffffffffL
        0xffffffffffL
        0x1ffffffffffL
        0x3ffffffffffL
        0x7ffffffffffL
        0xfffffffffffL
        0x1fffffffffffL
        0x3fffffffffffL
        0x7fffffffffffL
        0xffffffffffffL
        0x1ffffffffffffL
        0x3ffffffffffffL    # 5.562684646268E-309
        0x7ffffffffffffL
        0xfffffffffffffL
        0x1fffffffffffffL
        0x3fffffffffffffL
        0x7fffffffffffffL
        0xffffffffffffffL
        0x1ffffffffffffffL    # 4.77830972673648E-299
        0x3ffffffffffffffL
        0x7ffffffffffffffL
        0xfffffffffffffffL
        0x1fffffffffffffffL
        0x3fffffffffffffffL    # 1.9999999999999998
        0x7fffffffffffffffL
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;)V
    .locals 1

    .line 211
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    .line 213
    iget-object v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->biX:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->biX:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    .line 214
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->biX:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->qs()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->biY:I

    .line 215
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->biX:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->sw()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    .line 216
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->biX:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->sx()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->bjd:I

    .line 217
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->bje:[J

    .line 218
    invoke-direct {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->sv()[J

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->ʾ([J)V

    .line 219
    return-void
.end method

.method private sv()[J
    .locals 5

    .line 450
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->bje:[J

    array-length v0, v0

    new-array v4, v0, [J

    .line 451
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->bje:[J

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->bje:[J

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    return-object v4
.end method

.method private ʾ([J)V
    .locals 4

    .line 306
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->bje:[J

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 228
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 383
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;

    if-nez v0, :cond_1

    .line 385
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 388
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-object v4, v0

    .line 390
    const/4 v5, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    if-ge v5, v0, :cond_3

    .line 392
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->bje:[J

    aget-wide v0, v0, v5

    iget-object v2, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->bje:[J

    aget-wide v2, v2, v5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 394
    const/4 v0, 0x0

    return v0

    .line 390
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 398
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 406
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->bje:[J

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 6

    .line 339
    const/4 v4, 0x1

    .line 341
    const/4 v5, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    if-ge v5, v0, :cond_1

    if-eqz v4, :cond_1

    .line 343
    if-eqz v4, :cond_0

    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->bje:[J

    aget-wide v0, v0, v5

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 341
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 346
    :cond_1
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1045
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 9

    .line 1058
    const-string v4, ""

    .line 1060
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->sv()[J

    move-result-object v5

    .line 1061
    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->bjd:I

    .line 1063
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 1066
    add-int/lit8 v7, v6, -0x1

    :goto_0
    if-ltz v7, :cond_1

    .line 1068
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v5, v0

    const-wide/16 v2, 0x1

    shl-long/2addr v2, v7

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1074
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1066
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 1078
    :cond_1
    array-length v0, v5

    add-int/lit8 v7, v0, -0x2

    :goto_2
    if-ltz v7, :cond_4

    .line 1080
    const/16 v8, 0x3f

    :goto_3
    if-ltz v8, :cond_3

    .line 1082
    aget-wide v0, v5, v7

    sget-object v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->bja:[J

    aget-wide v2, v2, v8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 1088
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1080
    :goto_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 1078
    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_4
    goto/16 :goto_6

    .line 1093
    :cond_5
    const/16 v0, 0x10

    if-ne p1, v0, :cond_6

    .line 1095
    const/16 v0, 0x10

    new-array v7, v0, [C

    fill-array-data v7, :array_0

    .line 1097
    array-length v0, v5

    add-int/lit8 v8, v0, -0x1

    :goto_5
    if-ltz v8, :cond_6

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v1, v5, v8

    const/16 v3, 0x3c

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v1, v5, v8

    const/16 v3, 0x38

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v1, v5, v8

    const/16 v3, 0x34

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v1, v5, v8

    const/16 v3, 0x30

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v1, v5, v8

    const/16 v3, 0x2c

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v1, v5, v8

    const/16 v3, 0x28

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v1, v5, v8

    const/16 v3, 0x24

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v1, v5, v8

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v1, v5, v8

    const/16 v3, 0x1c

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v1, v5, v8

    const/16 v3, 0x18

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v1, v5, v8

    const/16 v3, 0x14

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v1, v5, v8

    const/16 v3, 0x10

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v1, v5, v8

    const/16 v3, 0xc

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v1, v5, v8

    const/16 v3, 0x8

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v1, v5, v8

    const/4 v3, 0x4

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v1, v5, v8

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1097
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_5

    .line 1118
    :cond_6
    :goto_6
    return-object v4

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
