.class public Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
.source ""


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

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
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->aWJ:Z

    .line 53
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 59
    iput-boolean p5, p0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->aWJ:Z

    .line 60
    return-void
.end method


# virtual methods
.method protected pF()Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .line 64
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public pT()Lorg/spongycastle/math/ec/ECPoint;
    .locals 6

    .line 302
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    return-object p0

    .line 307
    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->pw()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->aWJ:Z

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public pU()Lorg/spongycastle/math/ec/ECPoint;
    .locals 22

    .line 195
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    return-object p0

    .line 200
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    move-object v7, v0

    .line 203
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 208
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    move-object v9, v0

    .line 211
    const/16 v0, 0xc

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v11

    .line 212
    const/16 v0, 0xc

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v12

    .line 214
    const/16 v0, 0xc

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v13

    .line 215
    iget-object v0, v7, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    invoke-static {v0, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ι([I[I)V

    .line 217
    const/16 v0, 0xc

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v14

    .line 218
    invoke-static {v13, v14}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ι([I[I)V

    .line 220
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->pA()Z

    move-result v15

    .line 222
    iget-object v0, v9, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v16, v0

    .line 223
    if-nez v15, :cond_2

    .line 225
    move-object/from16 v16, v12

    .line 226
    iget-object v0, v9, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ι([I[I)V

    .line 229
    :cond_2
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v16

    invoke-static {v0, v1, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ᐝ([I[I[I)V

    .line 231
    move-object/from16 v17, v12

    .line 232
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ˋ([I[I[I)V

    .line 233
    move-object/from16 v0, v17

    move-object/from16 v1, v17

    invoke-static {v0, v11, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ˎ([I[I[I)V

    .line 234
    const/16 v0, 0xc

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lorg/spongycastle/math/raw/Nat;->ˋ(I[I[I[I)I

    move-result v10

    .line 235
    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ʽ(I[I)V

    .line 237
    move-object/from16 v18, v13

    .line 238
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v18

    invoke-static {v13, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ˎ([I[I[I)V

    .line 239
    const/16 v0, 0xc

    move-object/from16 v1, v18

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[III)I

    move-result v10

    .line 240
    move-object/from16 v0, v18

    invoke-static {v10, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ʽ(I[I)V

    .line 242
    const/16 v0, 0xc

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v14, v1, v2, v11}, Lorg/spongycastle/math/raw/Nat;->ˊ(I[III[I)I

    move-result v10

    .line 243
    invoke-static {v10, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ʽ(I[I)V

    .line 245
    new-instance v19, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 246
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v17

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ι([I[I)V

    .line 247
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v19

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v2, v18

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ᐝ([I[I[I)V

    .line 248
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v19

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v2, v18

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ᐝ([I[I[I)V

    .line 250
    new-instance v20, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 251
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v2, v18

    invoke-static {v2, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ᐝ([I[I[I)V

    .line 252
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v2, v17

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ˎ([I[I[I)V

    .line 253
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    invoke-static {v0, v11, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ᐝ([I[I[I)V

    .line 255
    new-instance v21, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 256
    iget-object v0, v7, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v21

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ʾ([I[I)V

    .line 257
    if-nez v15, :cond_3

    .line 259
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    iget-object v1, v9, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v2, v21

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ˎ([I[I[I)V

    .line 262
    :cond_3
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;

    const/4 v1, 0x1

    new-array v4, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aput-object v21, v4, v1

    move-object/from16 v1, p0

    iget-boolean v5, v1, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->aWJ:Z

    move-object v1, v6

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public pV()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 291
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->pR()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    :cond_0
    return-object p0

    .line 297
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 33

    .line 69
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    return-object p1

    .line 73
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    return-object p0

    .line 77
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 79
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 82
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    move-object v8, v0

    .line 85
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->pJ()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    move-object v9, v0

    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->pK()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    move-object v10, v0

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    move-object v11, v0

    .line 88
    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->ﺌ(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    move-object v12, v0

    .line 91
    const/16 v0, 0x18

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v14

    .line 92
    const/16 v0, 0x18

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v15

    .line 93
    const/16 v0, 0xc

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v16

    .line 94
    const/16 v0, 0xc

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v17

    .line 96
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->pA()Z

    move-result v18

    .line 98
    if-eqz v18, :cond_3

    .line 100
    iget-object v0, v9, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v19, v0

    .line 101
    iget-object v0, v10, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v20, v0

    goto :goto_0

    .line 105
    :cond_3
    move-object/from16 v20, v16

    .line 106
    iget-object v0, v11, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ι([I[I)V

    .line 108
    move-object/from16 v19, v15

    .line 109
    iget-object v0, v9, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ˎ([I[I[I)V

    .line 111
    iget-object v0, v11, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    move-object/from16 v2, v20

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ˎ([I[I[I)V

    .line 112
    iget-object v0, v10, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    move-object/from16 v2, v20

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ˎ([I[I[I)V

    .line 115
    :goto_0
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->pA()Z

    move-result v21

    .line 117
    if-eqz v21, :cond_4

    .line 119
    iget-object v0, v7, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v22, v0

    .line 120
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v23, v0

    goto :goto_1

    .line 124
    :cond_4
    move-object/from16 v23, v17

    .line 125
    iget-object v0, v12, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ι([I[I)V

    .line 127
    move-object/from16 v22, v14

    .line 128
    iget-object v0, v7, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ˎ([I[I[I)V

    .line 130
    iget-object v0, v12, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v23

    move-object/from16 v2, v23

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ˎ([I[I[I)V

    .line 131
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v23

    move-object/from16 v2, v23

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ˎ([I[I[I)V

    .line 134
    :goto_1
    const/16 v0, 0xc

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v24

    .line 135
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ᐝ([I[I[I)V

    .line 137
    const/16 v0, 0xc

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v25

    .line 138
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ᐝ([I[I[I)V

    .line 141
    const/16 v0, 0xc

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lorg/spongycastle/math/raw/Nat;->ˈ(I[I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 143
    const/16 v0, 0xc

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lorg/spongycastle/math/raw/Nat;->ˈ(I[I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 150
    :cond_5
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 153
    :cond_6
    move-object/from16 v26, v16

    .line 154
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ι([I[I)V

    .line 156
    const/16 v0, 0xc

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat;->ċ(I)[I

    move-result-object v27

    .line 157
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ˎ([I[I[I)V

    .line 159
    move-object/from16 v28, v16

    .line 160
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ˎ([I[I[I)V

    .line 162
    move-object/from16 v0, v27

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ʽ([I[I)V

    .line 163
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1, v14}, Lorg/spongycastle/math/raw/Nat384;->ʿ([I[I[I)V

    .line 165
    const/16 v0, 0xc

    move-object/from16 v1, v28

    move-object/from16 v2, v28

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lorg/spongycastle/math/raw/Nat;->ˋ(I[I[I[I)I

    move-result v13

    .line 166
    move-object/from16 v0, v27

    invoke-static {v13, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ʽ(I[I)V

    .line 168
    new-instance v29, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 169
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v25

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ι([I[I)V

    .line 170
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v29

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v2, v27

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ᐝ([I[I[I)V

    .line 172
    new-instance v30, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 173
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v30

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v2, v28

    invoke-static {v2, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ᐝ([I[I[I)V

    .line 174
    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v1, v25

    invoke-static {v0, v1, v15}, Lorg/spongycastle/math/raw/Nat384;->ʿ([I[I[I)V

    .line 175
    invoke-static {v14, v15, v14}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ʼ([I[I[I)V

    .line 176
    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    invoke-static {v14, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ͺ([I[I)V

    .line 178
    new-instance v31, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 179
    if-nez v18, :cond_7

    .line 181
    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    iget-object v1, v11, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v2, v31

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ˎ([I[I[I)V

    .line 183
    :cond_7
    if-nez v21, :cond_8

    .line 185
    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    iget-object v1, v12, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    move-object/from16 v2, v31

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->ˎ([I[I[I)V

    .line 188
    :cond_8
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v32, v0

    const/4 v0, 0x0

    aput-object v31, v32, v0

    .line 190
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;

    move-object/from16 v1, p0

    iget-boolean v5, v1, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->aWJ:Z

    move-object v1, v6

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v32

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public ʽ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    .line 267
    if-ne p0, p1, :cond_0

    .line 269
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->pV()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 271
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->pR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    return-object p1

    .line 275
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 280
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 281
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    return-object p1

    .line 286
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
