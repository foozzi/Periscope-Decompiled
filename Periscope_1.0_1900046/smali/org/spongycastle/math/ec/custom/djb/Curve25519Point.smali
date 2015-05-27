.class public Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
.source ""


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 2

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 38
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

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_2
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->aWJ:Z

    .line 44
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 50
    iput-boolean p5, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->aWJ:Z

    .line 51
    return-void
.end method


# virtual methods
.method protected pF()Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .line 55
    new-instance v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public pT()Lorg/spongycastle/math/ec/ECPoint;
    .locals 6

    .line 257
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    return-object p0

    .line 262
    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->pw()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->aWJ:Z

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public pU()Lorg/spongycastle/math/ec/ECPoint;
    .locals 3

    .line 199
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    return-object p0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 206
    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 207
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 212
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->і(Z)Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    move-result-object v0

    return-object v0
.end method

.method public pV()Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    .line 241
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    return-object p0

    .line 246
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 247
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    return-object p0

    .line 252
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->і(Z)Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method protected qj()Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    .locals 4

    .line 286
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object v3, v0

    .line 287
    if-nez v3, :cond_0

    .line 290
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->ˊ(Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;[I)Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-result-object v3

    const/4 v1, 0x1

    aput-object v3, v0, v1

    .line 292
    :cond_0
    return-object v3
.end method

.method public ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 35

    .line 70
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->pR()Z

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
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 83
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object v8, v0

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object v9, v0

    .line 87
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->pJ()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object v10, v0

    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->pK()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object v11, v0

    .line 88
    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->ﺌ(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object v12, v0

    .line 91
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qw()[I

    move-result-object v14

    .line 92
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v15

    .line 93
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v16

    .line 94
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v17

    .line 96
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->pA()Z

    move-result v18

    .line 98
    if-eqz v18, :cond_3

    .line 100
    iget-object v0, v10, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v19, v0

    .line 101
    iget-object v0, v11, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v20, v0

    goto :goto_0

    .line 105
    :cond_3
    move-object/from16 v20, v16

    .line 106
    iget-object v0, v9, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ι([I[I)V

    .line 108
    move-object/from16 v19, v15

    .line 109
    iget-object v0, v10, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ˎ([I[I[I)V

    .line 111
    iget-object v0, v9, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    move-object/from16 v2, v20

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ˎ([I[I[I)V

    .line 112
    iget-object v0, v11, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v1, v20

    move-object/from16 v2, v20

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ˎ([I[I[I)V

    .line 115
    :goto_0
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->pA()Z

    move-result v21

    .line 117
    if-eqz v21, :cond_4

    .line 119
    iget-object v0, v7, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v22, v0

    .line 120
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v23, v0

    goto :goto_1

    .line 124
    :cond_4
    move-object/from16 v23, v17

    .line 125
    iget-object v0, v12, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ι([I[I)V

    .line 127
    move-object/from16 v22, v14

    .line 128
    iget-object v0, v7, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ˎ([I[I[I)V

    .line 130
    iget-object v0, v12, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v1, v23

    move-object/from16 v2, v23

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ˎ([I[I[I)V

    .line 131
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v1, v23

    move-object/from16 v2, v23

    invoke-static {v1, v0, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ˎ([I[I[I)V

    .line 134
    :goto_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v24

    .line 135
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ᐝ([I[I[I)V

    .line 137
    move-object/from16 v25, v15

    .line 138
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ᐝ([I[I[I)V

    .line 141
    invoke-static/range {v24 .. v24}, Lorg/spongycastle/math/raw/Nat256;->ﹳ([I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 143
    invoke-static/range {v25 .. v25}, Lorg/spongycastle/math/raw/Nat256;->ﹳ([I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 150
    :cond_5
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 153
    :cond_6
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v26

    .line 154
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ι([I[I)V

    .line 156
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v27

    .line 157
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ˎ([I[I[I)V

    .line 159
    move-object/from16 v28, v16

    .line 160
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ˎ([I[I[I)V

    .line 162
    move-object/from16 v0, v27

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ʽ([I[I)V

    .line 163
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1, v14}, Lorg/spongycastle/math/raw/Nat256;->ʿ([I[I[I)V

    .line 165
    move-object/from16 v0, v28

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/raw/Nat256;->ʾ([I[I[I)I

    move-result v13

    .line 166
    move-object/from16 v0, v27

    invoke-static {v13, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ʼ(I[I)V

    .line 168
    new-instance v29, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 169
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v1, v25

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ι([I[I)V

    .line 170
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v1, v29

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v2, v27

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ᐝ([I[I[I)V

    .line 172
    new-instance v30, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 173
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v1, v30

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v2, v28

    invoke-static {v2, v0, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ᐝ([I[I[I)V

    .line 174
    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v1, v25

    invoke-static {v0, v1, v14}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ˏ([I[I[I)V

    .line 175
    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    invoke-static {v14, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ͺ([I[I)V

    .line 177
    new-instance v31, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 178
    if-nez v18, :cond_7

    .line 180
    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    iget-object v1, v9, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v2, v31

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ˎ([I[I[I)V

    .line 182
    :cond_7
    if-nez v21, :cond_8

    .line 184
    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    iget-object v1, v12, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v2, v31

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ˎ([I[I[I)V

    .line 187
    :cond_8
    if-eqz v18, :cond_9

    if-eqz v21, :cond_9

    move-object/from16 v32, v26

    goto :goto_2

    :cond_9
    const/16 v32, 0x0

    .line 190
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->ˊ(Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;[I)Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-result-object v33

    .line 192
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v34, v0

    const/4 v0, 0x0

    aput-object v31, v34, v0

    const/4 v0, 0x1

    aput-object v33, v34, v0

    .line 194
    new-instance v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    move-object/from16 v1, p0

    iget-boolean v5, v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->aWJ:Z

    move-object v1, v6

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v34

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public ʽ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    .line 217
    if-ne p0, p1, :cond_0

    .line 219
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->pV()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 221
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->pR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    return-object p1

    .line 225
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 230
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 231
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    return-object p1

    .line 236
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->і(Z)Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method protected ˊ(Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;[I)Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    .locals 5

    .line 267
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object v3, v0

    .line 268
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->pA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    return-object v3

    .line 273
    :cond_0
    new-instance v4, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v4}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>()V

    .line 274
    if-nez p2, :cond_1

    .line 276
    iget-object p2, v4, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    .line 277
    iget-object v0, p1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ι([I[I)V

    .line 279
    :cond_1
    iget-object v0, v4, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    invoke-static {p2, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ι([I[I)V

    .line 280
    iget-object v0, v4, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    iget-object v1, v3, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    iget-object v2, v4, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ˎ([I[I[I)V

    .line 281
    return-object v4
.end method

.method protected і(Z)Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;
    .locals 20

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->bcB:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->bcC:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object v7, v0

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->bcD:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object v8, v0

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->qj()Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-result-object v9

    .line 302
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v11

    .line 303
    iget-object v0, v6, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    invoke-static {v0, v11}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ι([I[I)V

    .line 304
    invoke-static {v11, v11, v11}, Lorg/spongycastle/math/raw/Nat256;->ʾ([I[I[I)I

    move-result v10

    .line 305
    iget-object v0, v9, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    invoke-static {v0, v11}, Lorg/spongycastle/math/raw/Nat256;->ˑ([I[I)I

    move-result v0

    add-int/2addr v10, v0

    .line 306
    invoke-static {v10, v11}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ʼ(I[I)V

    .line 308
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v12

    .line 309
    iget-object v0, v7, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    invoke-static {v0, v12}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ʾ([I[I)V

    .line 311
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v13

    .line 312
    iget-object v0, v7, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    invoke-static {v12, v0, v13}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ˎ([I[I[I)V

    .line 314
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v14

    .line 315
    iget-object v0, v6, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    invoke-static {v13, v0, v14}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ˎ([I[I[I)V

    .line 316
    invoke-static {v14, v14}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ʾ([I[I)V

    .line 318
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->qv()[I

    move-result-object v15

    .line 319
    invoke-static {v13, v15}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ι([I[I)V

    .line 320
    invoke-static {v15, v15}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ʾ([I[I)V

    .line 322
    new-instance v16, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 323
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    invoke-static {v11, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ι([I[I)V

    .line 324
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v1, v16

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    invoke-static {v0, v14, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ᐝ([I[I[I)V

    .line 325
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v1, v16

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    invoke-static {v0, v14, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ᐝ([I[I[I)V

    .line 327
    new-instance v17, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 328
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v1, v17

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    invoke-static {v14, v0, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ᐝ([I[I[I)V

    .line 329
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v1, v17

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    invoke-static {v0, v11, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ˎ([I[I[I)V

    .line 330
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v1, v17

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    invoke-static {v0, v15, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ᐝ([I[I[I)V

    .line 332
    new-instance v18, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 333
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat256;->ᐨ([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    iget-object v1, v8, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v2, v18

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ˎ([I[I[I)V

    .line 338
    :cond_0
    const/16 v19, 0x0

    .line 339
    if-eqz p1, :cond_1

    .line 341
    new-instance v19, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 342
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    iget-object v1, v9, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v2, v19

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ˎ([I[I[I)V

    .line 343
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    move-object/from16 v1, v19

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->aLJ:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->ʾ([I[I)V

    .line 346
    :cond_1
    new-instance v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    const/4 v2, 0x2

    new-array v4, v2, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v18, v4, v2

    const/4 v2, 0x1

    aput-object v19, v4, v2

    move-object/from16 v2, p0

    iget-boolean v5, v2, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->aWJ:Z

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public ﺌ(I)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 60
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->qj()Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    invoke-super {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->ﺌ(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method
