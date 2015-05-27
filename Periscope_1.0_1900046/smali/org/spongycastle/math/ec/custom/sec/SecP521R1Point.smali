.class public Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
.source ""


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 2

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 46
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

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->aWJ:Z

    .line 52
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 58
    iput-boolean p5, p0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->aWJ:Z

    .line 59
    return-void
.end method


# virtual methods
.method protected pF()Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .line 63
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public pT()Lorg/spongycastle/math/ec/ECPoint;
    .locals 6

    .line 326
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    return-object p0

    .line 331
    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->pw()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->aWJ:Z

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public pU()Lorg/spongycastle/math/ec/ECPoint;
    .locals 21

    .line 190
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    return-object p0

    .line 195
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    move-object v7, v0

    .line 198
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 203
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    move-object v9, v0

    .line 205
    const/16 v0, 0x11

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v10

    .line 206
    const/16 v0, 0x11

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v11

    .line 208
    const/16 v0, 0x11

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v12

    .line 209
    iget-object v0, v7, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    invoke-static {v0, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ι([I[I)V

    .line 211
    const/16 v0, 0x11

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v13

    .line 212
    invoke-static {v12, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ι([I[I)V

    .line 214
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->pA()Z

    move-result v14

    .line 216
    iget-object v15, v9, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    .line 217
    if-nez v14, :cond_2

    .line 219
    move-object v15, v11

    .line 220
    iget-object v0, v9, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    invoke-static {v0, v15}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ι([I[I)V

    .line 223
    :cond_2
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    invoke-static {v0, v15, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ᐝ([I[I[I)V

    .line 225
    move-object/from16 v16, v11

    .line 226
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ˋ([I[I[I)V

    .line 227
    move-object/from16 v0, v16

    move-object/from16 v1, v16

    invoke-static {v0, v10, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ˎ([I[I[I)V

    .line 228
    const/16 v0, 0x11

    move-object/from16 v1, v16

    move-object/from16 v2, v16

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lorg/spongycastle/math/raw/Nat;->ˋ(I[I[I[I)I

    .line 229
    invoke-static/range {v16 .. v16}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ˑ([I)V

    .line 231
    move-object/from16 v17, v12

    .line 232
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v17

    invoke-static {v12, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ˎ([I[I[I)V

    .line 233
    const/16 v0, 0x11

    move-object/from16 v1, v17

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[III)I

    .line 234
    invoke-static/range {v17 .. v17}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ˑ([I)V

    .line 236
    const/16 v0, 0x11

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v13, v1, v2, v10}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[III[I)I

    .line 237
    invoke-static {v10}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ˑ([I)V

    .line 239
    new-instance v18, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 240
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ι([I[I)V

    .line 241
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v18

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v2, v17

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ᐝ([I[I[I)V

    .line 242
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v18

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v2, v17

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ᐝ([I[I[I)V

    .line 244
    new-instance v19, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 245
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v19

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v2, v17

    invoke-static {v2, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ᐝ([I[I[I)V

    .line 246
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v19

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v2, v16

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ˎ([I[I[I)V

    .line 247
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v19

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    invoke-static {v0, v10, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ᐝ([I[I[I)V

    .line 249
    new-instance v20, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 250
    iget-object v0, v7, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ʾ([I[I)V

    .line 251
    if-nez v14, :cond_3

    .line 253
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    iget-object v1, v9, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v2, v20

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ˎ([I[I[I)V

    .line 256
    :cond_3
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;

    const/4 v1, 0x1

    new-array v4, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aput-object v20, v4, v1

    move-object/from16 v1, p0

    iget-boolean v5, v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->aWJ:Z

    move-object v1, v6

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public pV()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 285
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->pR()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    :cond_0
    return-object p0

    .line 291
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 32

    .line 68
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    return-object p1

    .line 72
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    return-object p0

    .line 76
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 78
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 81
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    move-object v8, v0

    .line 84
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->pJ()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    move-object v9, v0

    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->pK()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    move-object v10, v0

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    move-object v11, v0

    .line 87
    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->ﺌ(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    move-object v12, v0

    .line 89
    const/16 v0, 0x11

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v13

    .line 90
    const/16 v0, 0x11

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v14

    .line 91
    const/16 v0, 0x11

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v15

    .line 92
    const/16 v0, 0x11

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v16

    .line 94
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->pA()Z

    move-result v17

    .line 96
    if-eqz v17, :cond_3

    .line 98
    iget-object v0, v9, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v18, v0

    .line 99
    iget-object v0, v10, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v19, v0

    goto :goto_0

    .line 103
    :cond_3
    move-object/from16 v19, v15

    .line 104
    iget-object v0, v11, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ι([I[I)V

    .line 106
    move-object/from16 v18, v14

    .line 107
    iget-object v0, v9, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ˎ([I[I[I)V

    .line 109
    iget-object v0, v11, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ˎ([I[I[I)V

    .line 110
    iget-object v0, v10, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ˎ([I[I[I)V

    .line 113
    :goto_0
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->pA()Z

    move-result v20

    .line 115
    if-eqz v20, :cond_4

    .line 117
    iget-object v0, v7, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v21, v0

    .line 118
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v22, v0

    goto :goto_1

    .line 122
    :cond_4
    move-object/from16 v22, v16

    .line 123
    iget-object v0, v12, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ι([I[I)V

    .line 125
    move-object/from16 v21, v13

    .line 126
    iget-object v0, v7, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ˎ([I[I[I)V

    .line 128
    iget-object v0, v12, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v22

    move-object/from16 v2, v22

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ˎ([I[I[I)V

    .line 129
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v22

    move-object/from16 v2, v22

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ˎ([I[I[I)V

    .line 132
    :goto_1
    const/16 v0, 0x11

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v23

    .line 133
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ᐝ([I[I[I)V

    .line 135
    move-object/from16 v24, v14

    .line 136
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ᐝ([I[I[I)V

    .line 139
    const/16 v0, 0x11

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/spongycastle/math/raw/Nat;->ˈ(I[I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 141
    const/16 v0, 0x11

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lorg/spongycastle/math/raw/Nat;->ˈ(I[I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 148
    :cond_5
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 151
    :cond_6
    move-object/from16 v25, v15

    .line 152
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ι([I[I)V

    .line 154
    const/16 v0, 0x11

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v26

    .line 155
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ˎ([I[I[I)V

    .line 157
    move-object/from16 v27, v15

    .line 158
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ˎ([I[I[I)V

    .line 160
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-static {v0, v1, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ˎ([I[I[I)V

    .line 162
    new-instance v28, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 163
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v24

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ι([I[I)V

    .line 164
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v28

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v2, v26

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ˋ([I[I[I)V

    .line 165
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v28

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v2, v27

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ᐝ([I[I[I)V

    .line 166
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v28

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v2, v27

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ᐝ([I[I[I)V

    .line 168
    new-instance v29, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 169
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v29

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v2, v27

    invoke-static {v2, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ᐝ([I[I[I)V

    .line 170
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v1, v24

    invoke-static {v0, v1, v14}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ˎ([I[I[I)V

    .line 171
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    invoke-static {v14, v13, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ᐝ([I[I[I)V

    .line 173
    new-instance v30, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 174
    if-nez v17, :cond_7

    .line 176
    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    iget-object v1, v11, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v2, v30

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ˎ([I[I[I)V

    .line 178
    :cond_7
    if-nez v20, :cond_8

    .line 180
    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    iget-object v1, v12, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    move-object/from16 v2, v30

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->ˎ([I[I[I)V

    .line 183
    :cond_8
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v31, v0

    const/4 v0, 0x0

    aput-object v30, v31, v0

    .line 185
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;

    move-object/from16 v1, p0

    iget-boolean v5, v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->aWJ:Z

    move-object v1, v6

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v31

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public ʽ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    .line 261
    if-ne p0, p1, :cond_0

    .line 263
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->pV()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->pR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    return-object p1

    .line 269
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 274
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 275
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    return-object p1

    .line 280
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
