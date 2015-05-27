.class public Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
.source ""


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

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
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->aWJ:Z

    .line 53
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 59
    iput-boolean p5, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->aWJ:Z

    .line 60
    return-void
.end method


# virtual methods
.method protected pF()Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .line 64
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public pT()Lorg/spongycastle/math/ec/ECPoint;
    .locals 6

    .line 303
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    return-object p0

    .line 308
    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->pw()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->aWJ:Z

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public pU()Lorg/spongycastle/math/ec/ECPoint;
    .locals 22

    .line 196
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    return-object p0

    .line 201
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    move-object v7, v0

    .line 204
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 209
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    move-object v9, v0

    .line 212
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v11

    .line 213
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v12

    .line 215
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v13

    .line 216
    iget-object v0, v7, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    invoke-static {v0, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ι([I[I)V

    .line 218
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v14

    .line 219
    invoke-static {v13, v14}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ι([I[I)V

    .line 221
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->pA()Z

    move-result v15

    .line 223
    iget-object v0, v9, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v16, v0

    .line 224
    if-nez v15, :cond_2

    .line 226
    move-object/from16 v16, v12

    .line 227
    iget-object v0, v9, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ι([I[I)V

    .line 230
    :cond_2
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v16

    invoke-static {v0, v1, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ᐝ([I[I[I)V

    .line 232
    move-object/from16 v17, v12

    .line 233
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˋ([I[I[I)V

    .line 234
    move-object/from16 v0, v17

    move-object/from16 v1, v17

    invoke-static {v0, v11, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˎ([I[I[I)V

    .line 235
    move-object/from16 v0, v17

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/raw/Nat192;->ʾ([I[I[I)I

    move-result v10

    .line 236
    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ʽ(I[I)V

    .line 238
    move-object/from16 v18, v13

    .line 239
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v18

    invoke-static {v13, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˎ([I[I[I)V

    .line 240
    const/4 v0, 0x6

    move-object/from16 v1, v18

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[III)I

    move-result v10

    .line 241
    move-object/from16 v0, v18

    invoke-static {v10, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ʽ(I[I)V

    .line 243
    const/4 v0, 0x6

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v14, v1, v2, v11}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[III[I)I

    move-result v10

    .line 244
    invoke-static {v10, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ʽ(I[I)V

    .line 246
    new-instance v19, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 247
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v17

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ι([I[I)V

    .line 248
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v19

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v2, v18

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ᐝ([I[I[I)V

    .line 249
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v19

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v2, v18

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ᐝ([I[I[I)V

    .line 251
    new-instance v20, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 252
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v2, v18

    invoke-static {v2, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ᐝ([I[I[I)V

    .line 253
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v2, v17

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˎ([I[I[I)V

    .line 254
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    invoke-static {v0, v11, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ᐝ([I[I[I)V

    .line 256
    new-instance v21, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 257
    iget-object v0, v7, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v21

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ʾ([I[I)V

    .line 258
    if-nez v15, :cond_3

    .line 260
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    iget-object v1, v9, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v2, v21

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˎ([I[I[I)V

    .line 263
    :cond_3
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;

    const/4 v1, 0x1

    new-array v4, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aput-object v21, v4, v1

    move-object/from16 v1, p0

    iget-boolean v5, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->aWJ:Z

    move-object v1, v6

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public pV()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 292
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->pR()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    :cond_0
    return-object p0

    .line 298
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 33

    .line 70
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    return-object p1

    .line 74
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    return-object p0

    .line 78
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 80
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 83
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    move-object v8, v0

    .line 86
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->pJ()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    move-object v9, v0

    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->pK()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    move-object v10, v0

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    move-object v11, v0

    .line 89
    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->ﺌ(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    move-object v12, v0

    .line 92
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qw()[I

    move-result-object v14

    .line 93
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v15

    .line 94
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v16

    .line 95
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v17

    .line 97
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->pA()Z

    move-result v18

    .line 99
    if-eqz v18, :cond_3

    .line 101
    iget-object v0, v9, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v19, v0

    .line 102
    iget-object v0, v10, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v20, v0

    goto :goto_0

    .line 106
    :cond_3
    move-object/from16 v20, v16

    .line 107
    iget-object v0, v11, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ι([I[I)V

    .line 109
    move-object/from16 v19, v15

    .line 110
    iget-object v0, v9, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˎ([I[I[I)V

    .line 112
    iget-object v0, v11, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    move-object/from16 v2, v20

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˎ([I[I[I)V

    .line 113
    iget-object v0, v10, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    move-object/from16 v2, v20

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˎ([I[I[I)V

    .line 116
    :goto_0
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->pA()Z

    move-result v21

    .line 118
    if-eqz v21, :cond_4

    .line 120
    iget-object v0, v7, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v22, v0

    .line 121
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v23, v0

    goto :goto_1

    .line 125
    :cond_4
    move-object/from16 v23, v17

    .line 126
    iget-object v0, v12, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ι([I[I)V

    .line 128
    move-object/from16 v22, v14

    .line 129
    iget-object v0, v7, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˎ([I[I[I)V

    .line 131
    iget-object v0, v12, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v23

    move-object/from16 v2, v23

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˎ([I[I[I)V

    .line 132
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v23

    move-object/from16 v2, v23

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˎ([I[I[I)V

    .line 135
    :goto_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v24

    .line 136
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ᐝ([I[I[I)V

    .line 138
    move-object/from16 v25, v15

    .line 139
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ᐝ([I[I[I)V

    .line 142
    invoke-static/range {v24 .. v24}, Lorg/spongycastle/math/raw/Nat192;->ﹳ([I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 144
    invoke-static/range {v25 .. v25}, Lorg/spongycastle/math/raw/Nat192;->ﹳ([I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 147
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 151
    :cond_5
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 154
    :cond_6
    move-object/from16 v26, v16

    .line 155
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ι([I[I)V

    .line 157
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v27

    .line 158
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˎ([I[I[I)V

    .line 160
    move-object/from16 v28, v16

    .line 161
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˎ([I[I[I)V

    .line 163
    move-object/from16 v0, v27

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ʽ([I[I)V

    .line 164
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1, v14}, Lorg/spongycastle/math/raw/Nat192;->ʿ([I[I[I)V

    .line 166
    move-object/from16 v0, v28

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/raw/Nat192;->ʾ([I[I[I)I

    move-result v13

    .line 167
    move-object/from16 v0, v27

    invoke-static {v13, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ʽ(I[I)V

    .line 169
    new-instance v29, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 170
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v25

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ι([I[I)V

    .line 171
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v29

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v2, v27

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ᐝ([I[I[I)V

    .line 173
    new-instance v30, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 174
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v30

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v2, v28

    invoke-static {v2, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ᐝ([I[I[I)V

    .line 175
    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v1, v25

    invoke-static {v0, v1, v14}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˏ([I[I[I)V

    .line 176
    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    invoke-static {v14, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ͺ([I[I)V

    .line 178
    new-instance v31, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 179
    if-nez v18, :cond_7

    .line 181
    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    iget-object v1, v11, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v2, v31

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˎ([I[I[I)V

    .line 183
    :cond_7
    if-nez v21, :cond_8

    .line 185
    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    iget-object v1, v12, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    move-object/from16 v2, v31

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->ˎ([I[I[I)V

    .line 188
    :cond_8
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v32, v0

    const/4 v0, 0x0

    aput-object v31, v32, v0

    .line 190
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;

    move-object/from16 v1, p0

    iget-boolean v5, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->aWJ:Z

    move-object v1, v6

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v32

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public ʽ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    .line 268
    if-ne p0, p1, :cond_0

    .line 270
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->pV()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->pR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    return-object p1

    .line 276
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 281
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 282
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    return-object p1

    .line 287
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
