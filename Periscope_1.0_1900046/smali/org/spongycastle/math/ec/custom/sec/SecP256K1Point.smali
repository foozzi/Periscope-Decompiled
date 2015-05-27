.class public Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
.source ""


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 2

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 47
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eq v0, v1, :cond_2

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->aWJ:Z

    .line 53
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 60
    iput-boolean p5, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->aWJ:Z

    .line 61
    return-void
.end method


# virtual methods
.method protected pF()Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .line 65
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public pT()Lorg/spongycastle/math/ec/ECPoint;
    .locals 6

    .line 291
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    return-object p0

    .line 296
    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->pw()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->aWJ:Z

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public pU()Lorg/spongycastle/math/ec/ECPoint;
    .locals 19

    .line 197
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    return-object p0

    .line 202
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;

    move-object v7, v0

    .line 205
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 210
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;

    move-object v9, v0

    .line 214
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v11

    .line 215
    iget-object v0, v7, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    invoke-static {v0, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ι([I[I)V

    .line 217
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v12

    .line 218
    invoke-static {v11, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ι([I[I)V

    .line 220
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v13

    .line 221
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    invoke-static {v0, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ι([I[I)V

    .line 222
    invoke-static {v13, v13, v13}, Lorg/spongycastle/math/raw/Nat256;->ʾ([I[I[I)I

    move-result v10

    .line 223
    invoke-static {v10, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ʽ(I[I)V

    .line 225
    move-object v14, v11

    .line 226
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    invoke-static {v11, v0, v14}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ˎ([I[I[I)V

    .line 227
    const/16 v0, 0x8

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v14, v1, v2}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[III)I

    move-result v10

    .line 228
    invoke-static {v10, v14}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ʽ(I[I)V

    .line 230
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v15

    .line 231
    const/16 v0, 0x8

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v12, v1, v2, v15}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[III[I)I

    move-result v10

    .line 232
    invoke-static {v10, v15}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ʽ(I[I)V

    .line 234
    new-instance v16, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 235
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    invoke-static {v13, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ι([I[I)V

    .line 236
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v1, v16

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    invoke-static {v0, v14, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ᐝ([I[I[I)V

    .line 237
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v1, v16

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    invoke-static {v0, v14, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ᐝ([I[I[I)V

    .line 239
    new-instance v17, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 240
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v1, v17

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    invoke-static {v14, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ᐝ([I[I[I)V

    .line 241
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v1, v17

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    invoke-static {v0, v13, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ˎ([I[I[I)V

    .line 242
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v1, v17

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    invoke-static {v0, v15, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ᐝ([I[I[I)V

    .line 244
    new-instance v18, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 245
    iget-object v0, v7, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v1, v18

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ʾ([I[I)V

    .line 246
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->pA()Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    iget-object v1, v9, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v2, v18

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ˎ([I[I[I)V

    .line 251
    :cond_2
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;

    const/4 v1, 0x1

    new-array v4, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aput-object v18, v4, v1

    move-object/from16 v1, p0

    iget-boolean v5, v1, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->aWJ:Z

    move-object v1, v6

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public pV()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 280
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->pR()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    return-object p0

    .line 286
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 33

    .line 71
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    return-object p1

    .line 75
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    return-object p0

    .line 79
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 81
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 84
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;

    move-object v8, v0

    .line 87
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->pJ()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;

    move-object v9, v0

    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->pK()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;

    move-object v10, v0

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;

    move-object v11, v0

    .line 90
    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->ﺌ(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;

    move-object v12, v0

    .line 93
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qw()[I

    move-result-object v14

    .line 94
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v15

    .line 95
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v16

    .line 96
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v17

    .line 98
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->pA()Z

    move-result v18

    .line 100
    if-eqz v18, :cond_3

    .line 102
    iget-object v0, v9, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v19, v0

    .line 103
    iget-object v0, v10, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v20, v0

    goto :goto_0

    .line 107
    :cond_3
    move-object/from16 v20, v16

    .line 108
    iget-object v0, v11, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ι([I[I)V

    .line 110
    move-object/from16 v19, v15

    .line 111
    iget-object v0, v9, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ˎ([I[I[I)V

    .line 113
    iget-object v0, v11, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    move-object/from16 v2, v20

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ˎ([I[I[I)V

    .line 114
    iget-object v0, v10, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    move-object/from16 v2, v20

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ˎ([I[I[I)V

    .line 117
    :goto_0
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->pA()Z

    move-result v21

    .line 119
    if-eqz v21, :cond_4

    .line 121
    iget-object v0, v7, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v22, v0

    .line 122
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v23, v0

    goto :goto_1

    .line 126
    :cond_4
    move-object/from16 v23, v17

    .line 127
    iget-object v0, v12, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ι([I[I)V

    .line 129
    move-object/from16 v22, v14

    .line 130
    iget-object v0, v7, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ˎ([I[I[I)V

    .line 132
    iget-object v0, v12, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v1, v23

    move-object/from16 v2, v23

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ˎ([I[I[I)V

    .line 133
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v1, v23

    move-object/from16 v2, v23

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ˎ([I[I[I)V

    .line 136
    :goto_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v24

    .line 137
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ᐝ([I[I[I)V

    .line 139
    move-object/from16 v25, v15

    .line 140
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ᐝ([I[I[I)V

    .line 143
    invoke-static/range {v24 .. v24}, Lorg/spongycastle/math/raw/Nat256;->ﹳ([I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 145
    invoke-static/range {v25 .. v25}, Lorg/spongycastle/math/raw/Nat256;->ﹳ([I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 152
    :cond_5
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 155
    :cond_6
    move-object/from16 v26, v16

    .line 156
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ι([I[I)V

    .line 158
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v27

    .line 159
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ˎ([I[I[I)V

    .line 161
    move-object/from16 v28, v16

    .line 162
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ˎ([I[I[I)V

    .line 164
    move-object/from16 v0, v27

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ʽ([I[I)V

    .line 165
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1, v14}, Lorg/spongycastle/math/raw/Nat256;->ʿ([I[I[I)V

    .line 167
    move-object/from16 v0, v28

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/raw/Nat256;->ʾ([I[I[I)I

    move-result v13

    .line 168
    move-object/from16 v0, v27

    invoke-static {v13, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ʽ(I[I)V

    .line 170
    new-instance v29, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 171
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v1, v25

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ι([I[I)V

    .line 172
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v1, v29

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v2, v27

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ᐝ([I[I[I)V

    .line 174
    new-instance v30, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 175
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v1, v30

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v2, v28

    invoke-static {v2, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ᐝ([I[I[I)V

    .line 176
    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v1, v25

    invoke-static {v0, v1, v14}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ˏ([I[I[I)V

    .line 177
    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    invoke-static {v14, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ͺ([I[I)V

    .line 179
    new-instance v31, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 180
    if-nez v18, :cond_7

    .line 182
    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    iget-object v1, v11, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v2, v31

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ˎ([I[I[I)V

    .line 184
    :cond_7
    if-nez v21, :cond_8

    .line 186
    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    iget-object v1, v12, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    move-object/from16 v2, v31

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Field;->ˎ([I[I[I)V

    .line 189
    :cond_8
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v32, v0

    const/4 v0, 0x0

    aput-object v31, v32, v0

    .line 191
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;

    move-object/from16 v1, p0

    iget-boolean v5, v1, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->aWJ:Z

    move-object v1, v6

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v32

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public ʽ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    .line 256
    if-ne p0, p1, :cond_0

    .line 258
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->pV()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 260
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->pR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    return-object p1

    .line 264
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 269
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 270
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    return-object p1

    .line 275
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
