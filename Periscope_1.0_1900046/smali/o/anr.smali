.class final Lo/anr;
.super Lo/ant;
.source ""


# instance fields
.field private final Tk:Ljava/lang/String;

.field private final bNU:Ljava/math/BigInteger;

.field private final bnm:Ljava/lang/String;

.field private final bpx:Ljava/lang/String;

.field private final bpy:Ljava/lang/String;

.field private final bpz:Ljava/lang/String;

.field private final bxq:Lo/anu;

.field private final bym:Ljava/lang/Integer;

.field private final byn:Ljava/lang/Integer;

.field private final byp:Ljava/lang/String;

.field private final byq:Ljava/lang/Long;

.field private final byr:Ljava/lang/Double;

.field private final bys:Ljava/lang/Double;

.field private final byt:Ljava/lang/Double;

.field private final byu:Ljava/lang/Integer;

.field private final byv:Ljava/lang/String;

.field private final byw:Ljava/lang/String;

.field private final byx:Ljava/lang/String;

.field private final mY:Ljava/lang/String;

.field private final nD:Ljava/lang/String;

.field private final oM:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Lo/anu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Lo/ant;-><init>()V

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null version"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p1, p0, Lo/anr;->byn:Ljava/lang/Integer;

    .line 58
    if-nez p2, :cond_1

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null type"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    iput-object p2, p0, Lo/anr;->bxq:Lo/anu;

    .line 62
    iput-object p3, p0, Lo/anr;->bnm:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lo/anr;->nD:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lo/anr;->bym:Ljava/lang/Integer;

    .line 65
    iput-object p6, p0, Lo/anr;->bNU:Ljava/math/BigInteger;

    .line 66
    iput-object p7, p0, Lo/anr;->oM:Ljava/lang/String;

    .line 67
    iput-object p8, p0, Lo/anr;->byq:Ljava/lang/Long;

    .line 68
    iput-object p9, p0, Lo/anr;->mY:Ljava/lang/String;

    .line 69
    iput-object p10, p0, Lo/anr;->bpx:Ljava/lang/String;

    .line 70
    iput-object p11, p0, Lo/anr;->bpy:Ljava/lang/String;

    .line 71
    iput-object p12, p0, Lo/anr;->bpz:Ljava/lang/String;

    .line 72
    iput-object p13, p0, Lo/anr;->Tk:Ljava/lang/String;

    .line 73
    move-object/from16 v0, p14

    iput-object v0, p0, Lo/anr;->byp:Ljava/lang/String;

    .line 74
    move-object/from16 v0, p15

    iput-object v0, p0, Lo/anr;->byr:Ljava/lang/Double;

    .line 75
    move-object/from16 v0, p16

    iput-object v0, p0, Lo/anr;->bys:Ljava/lang/Double;

    .line 76
    move-object/from16 v0, p17

    iput-object v0, p0, Lo/anr;->byt:Ljava/lang/Double;

    .line 77
    move-object/from16 v0, p18

    iput-object v0, p0, Lo/anr;->byu:Ljava/lang/Integer;

    .line 78
    move-object/from16 v0, p19

    iput-object v0, p0, Lo/anr;->byv:Ljava/lang/String;

    .line 79
    move-object/from16 v0, p20

    iput-object v0, p0, Lo/anr;->byw:Ljava/lang/String;

    .line 80
    move-object/from16 v0, p21

    iput-object v0, p0, Lo/anr;->byx:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public Cb()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lo/anr;->nD:Ljava/lang/String;

    return-object v0
.end method

.method public Ce()Ljava/lang/Integer;
    .locals 1

    .line 85
    iget-object v0, p0, Lo/anr;->byn:Ljava/lang/Integer;

    return-object v0
.end method

.method public Cf()Lo/anu;
    .locals 1

    .line 90
    iget-object v0, p0, Lo/anr;->bxq:Lo/anu;

    return-object v0
.end method

.method public Cg()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lo/anr;->bnm:Ljava/lang/String;

    return-object v0
.end method

.method public Ch()Ljava/lang/Integer;
    .locals 1

    .line 111
    iget-object v0, p0, Lo/anr;->bym:Ljava/lang/Integer;

    return-object v0
.end method

.method public Ci()Ljava/math/BigInteger;
    .locals 1

    .line 118
    iget-object v0, p0, Lo/anr;->bNU:Ljava/math/BigInteger;

    return-object v0
.end method

.method public Cj()Ljava/lang/Long;
    .locals 1

    .line 132
    iget-object v0, p0, Lo/anr;->byq:Ljava/lang/Long;

    return-object v0
.end method

.method public Ck()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lo/anr;->mY:Ljava/lang/String;

    return-object v0
.end method

.method public Cl()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lo/anr;->bpx:Ljava/lang/String;

    return-object v0
.end method

.method public Cm()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lo/anr;->bpz:Ljava/lang/String;

    return-object v0
.end method

.method public Cn()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lo/anr;->Tk:Ljava/lang/String;

    return-object v0
.end method

.method public Co()Ljava/lang/Double;
    .locals 1

    .line 181
    iget-object v0, p0, Lo/anr;->byr:Ljava/lang/Double;

    return-object v0
.end method

.method public Cp()Ljava/lang/Double;
    .locals 1

    .line 188
    iget-object v0, p0, Lo/anr;->bys:Ljava/lang/Double;

    return-object v0
.end method

.method public Cq()Ljava/lang/Double;
    .locals 1

    .line 195
    iget-object v0, p0, Lo/anr;->byt:Ljava/lang/Double;

    return-object v0
.end method

.method public Cr()Ljava/lang/Integer;
    .locals 1

    .line 202
    iget-object v0, p0, Lo/anr;->byu:Ljava/lang/Integer;

    return-object v0
.end method

.method public Cs()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lo/anr;->byv:Ljava/lang/String;

    return-object v0
.end method

.method public Ct()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lo/anr;->byw:Ljava/lang/String;

    return-object v0
.end method

.method public Cu()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lo/anr;->byx:Ljava/lang/String;

    return-object v0
.end method

.method public at()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lo/anr;->oM:Ljava/lang/String;

    return-object v0
.end method

.method public displayName()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lo/anr;->bpy:Ljava/lang/String;

    return-object v0
.end method

.method public du()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lo/anr;->byp:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 255
    if-ne p1, p0, :cond_0

    .line 256
    const/4 v0, 0x1

    return v0

    .line 258
    :cond_0
    instance-of v0, p1, Lo/ant;

    if-eqz v0, :cond_15

    .line 259
    move-object v0, p1

    check-cast v0, Lo/ant;

    move-object v2, v0

    .line 260
    iget-object v0, p0, Lo/anr;->byn:Ljava/lang/Integer;

    invoke-virtual {v2}, Lo/ant;->Ce()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lo/anr;->bxq:Lo/anu;

    invoke-virtual {v2}, Lo/ant;->Cf()Lo/anu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/anu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lo/anr;->bnm:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lo/ant;->Cg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/anr;->bnm:Ljava/lang/String;

    invoke-virtual {v2}, Lo/ant;->Cg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_0
    iget-object v0, p0, Lo/anr;->nD:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lo/ant;->Cb()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lo/anr;->nD:Ljava/lang/String;

    invoke-virtual {v2}, Lo/ant;->Cb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_1
    iget-object v0, p0, Lo/anr;->bym:Ljava/lang/Integer;

    if-nez v0, :cond_3

    invoke-virtual {v2}, Lo/ant;->Ch()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lo/anr;->bym:Ljava/lang/Integer;

    invoke-virtual {v2}, Lo/ant;->Ch()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_2
    iget-object v0, p0, Lo/anr;->bNU:Ljava/math/BigInteger;

    if-nez v0, :cond_4

    invoke-virtual {v2}, Lo/ant;->Ci()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lo/anr;->bNU:Ljava/math/BigInteger;

    invoke-virtual {v2}, Lo/ant;->Ci()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_3
    iget-object v0, p0, Lo/anr;->oM:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-virtual {v2}, Lo/ant;->at()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lo/anr;->oM:Ljava/lang/String;

    invoke-virtual {v2}, Lo/ant;->at()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_4
    iget-object v0, p0, Lo/anr;->byq:Ljava/lang/Long;

    if-nez v0, :cond_6

    invoke-virtual {v2}, Lo/ant;->Cj()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lo/anr;->byq:Ljava/lang/Long;

    invoke-virtual {v2}, Lo/ant;->Cj()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_5
    iget-object v0, p0, Lo/anr;->mY:Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-virtual {v2}, Lo/ant;->Ck()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lo/anr;->mY:Ljava/lang/String;

    invoke-virtual {v2}, Lo/ant;->Ck()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_6
    iget-object v0, p0, Lo/anr;->bpx:Ljava/lang/String;

    if-nez v0, :cond_8

    invoke-virtual {v2}, Lo/ant;->Cl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_7

    :cond_8
    iget-object v0, p0, Lo/anr;->bpx:Ljava/lang/String;

    invoke-virtual {v2}, Lo/ant;->Cl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_7
    iget-object v0, p0, Lo/anr;->bpy:Ljava/lang/String;

    if-nez v0, :cond_9

    invoke-virtual {v2}, Lo/ant;->displayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_8

    :cond_9
    iget-object v0, p0, Lo/anr;->bpy:Ljava/lang/String;

    invoke-virtual {v2}, Lo/ant;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_8
    iget-object v0, p0, Lo/anr;->bpz:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-virtual {v2}, Lo/ant;->Cm()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_9

    :cond_a
    iget-object v0, p0, Lo/anr;->bpz:Ljava/lang/String;

    invoke-virtual {v2}, Lo/ant;->Cm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_9
    iget-object v0, p0, Lo/anr;->Tk:Ljava/lang/String;

    if-nez v0, :cond_b

    invoke-virtual {v2}, Lo/ant;->Cn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_a

    :cond_b
    iget-object v0, p0, Lo/anr;->Tk:Ljava/lang/String;

    invoke-virtual {v2}, Lo/ant;->Cn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_a
    iget-object v0, p0, Lo/anr;->byp:Ljava/lang/String;

    if-nez v0, :cond_c

    invoke-virtual {v2}, Lo/ant;->du()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_b

    :cond_c
    iget-object v0, p0, Lo/anr;->byp:Ljava/lang/String;

    invoke-virtual {v2}, Lo/ant;->du()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_b
    iget-object v0, p0, Lo/anr;->byr:Ljava/lang/Double;

    if-nez v0, :cond_d

    invoke-virtual {v2}, Lo/ant;->Co()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_c

    :cond_d
    iget-object v0, p0, Lo/anr;->byr:Ljava/lang/Double;

    invoke-virtual {v2}, Lo/ant;->Co()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_c
    iget-object v0, p0, Lo/anr;->bys:Ljava/lang/Double;

    if-nez v0, :cond_e

    invoke-virtual {v2}, Lo/ant;->Cp()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_d

    :cond_e
    iget-object v0, p0, Lo/anr;->bys:Ljava/lang/Double;

    invoke-virtual {v2}, Lo/ant;->Cp()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_d
    iget-object v0, p0, Lo/anr;->byt:Ljava/lang/Double;

    if-nez v0, :cond_f

    invoke-virtual {v2}, Lo/ant;->Cq()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_e

    :cond_f
    iget-object v0, p0, Lo/anr;->byt:Ljava/lang/Double;

    invoke-virtual {v2}, Lo/ant;->Cq()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_e
    iget-object v0, p0, Lo/anr;->byu:Ljava/lang/Integer;

    if-nez v0, :cond_10

    invoke-virtual {v2}, Lo/ant;->Cr()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_f

    :cond_10
    iget-object v0, p0, Lo/anr;->byu:Ljava/lang/Integer;

    invoke-virtual {v2}, Lo/ant;->Cr()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_f
    iget-object v0, p0, Lo/anr;->byv:Ljava/lang/String;

    if-nez v0, :cond_11

    invoke-virtual {v2}, Lo/ant;->Cs()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_10

    :cond_11
    iget-object v0, p0, Lo/anr;->byv:Ljava/lang/String;

    invoke-virtual {v2}, Lo/ant;->Cs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_10
    iget-object v0, p0, Lo/anr;->byw:Ljava/lang/String;

    if-nez v0, :cond_12

    invoke-virtual {v2}, Lo/ant;->Ct()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_11

    :cond_12
    iget-object v0, p0, Lo/anr;->byw:Ljava/lang/String;

    invoke-virtual {v2}, Lo/ant;->Ct()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_11
    iget-object v0, p0, Lo/anr;->byx:Ljava/lang/String;

    if-nez v0, :cond_13

    invoke-virtual {v2}, Lo/ant;->Cu()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_12

    :cond_13
    iget-object v0, p0, Lo/anr;->byx:Ljava/lang/String;

    invoke-virtual {v2}, Lo/ant;->Cu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_12
    const/4 v0, 0x1

    goto :goto_13

    :cond_14
    const/4 v0, 0x0

    :goto_13
    return v0

    .line 282
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 287
    const/4 v1, 0x1

    .line 288
    const v1, 0xf4243

    .line 289
    iget-object v0, p0, Lo/anr;->byn:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 290
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 291
    iget-object v0, p0, Lo/anr;->bxq:Lo/anu;

    invoke-virtual {v0}, Lo/anu;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 292
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 293
    iget-object v0, p0, Lo/anr;->bnm:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/anr;->bnm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    xor-int/2addr v1, v0

    .line 294
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 295
    iget-object v0, p0, Lo/anr;->nD:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo/anr;->nD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    xor-int/2addr v1, v0

    .line 296
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 297
    iget-object v0, p0, Lo/anr;->bym:Ljava/lang/Integer;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lo/anr;->bym:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_2
    xor-int/2addr v1, v0

    .line 298
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 299
    iget-object v0, p0, Lo/anr;->bNU:Ljava/math/BigInteger;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lo/anr;->bNU:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    :goto_3
    xor-int/2addr v1, v0

    .line 300
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 301
    iget-object v0, p0, Lo/anr;->oM:Ljava/lang/String;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lo/anr;->oM:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    xor-int/2addr v1, v0

    .line 302
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 303
    iget-object v0, p0, Lo/anr;->byq:Ljava/lang/Long;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lo/anr;->byq:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_5
    xor-int/2addr v1, v0

    .line 304
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 305
    iget-object v0, p0, Lo/anr;->mY:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lo/anr;->mY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    xor-int/2addr v1, v0

    .line 306
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 307
    iget-object v0, p0, Lo/anr;->bpx:Ljava/lang/String;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_7

    :cond_7
    iget-object v0, p0, Lo/anr;->bpx:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    xor-int/2addr v1, v0

    .line 308
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 309
    iget-object v0, p0, Lo/anr;->bpy:Ljava/lang/String;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :cond_8
    iget-object v0, p0, Lo/anr;->bpy:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    xor-int/2addr v1, v0

    .line 310
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 311
    iget-object v0, p0, Lo/anr;->bpz:Ljava/lang/String;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_9

    :cond_9
    iget-object v0, p0, Lo/anr;->bpz:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    xor-int/2addr v1, v0

    .line 312
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 313
    iget-object v0, p0, Lo/anr;->Tk:Ljava/lang/String;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_a

    :cond_a
    iget-object v0, p0, Lo/anr;->Tk:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    xor-int/2addr v1, v0

    .line 314
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 315
    iget-object v0, p0, Lo/anr;->byp:Ljava/lang/String;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_b

    :cond_b
    iget-object v0, p0, Lo/anr;->byp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    xor-int/2addr v1, v0

    .line 316
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 317
    iget-object v0, p0, Lo/anr;->byr:Ljava/lang/Double;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_c

    :cond_c
    iget-object v0, p0, Lo/anr;->byr:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_c
    xor-int/2addr v1, v0

    .line 318
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 319
    iget-object v0, p0, Lo/anr;->bys:Ljava/lang/Double;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_d

    :cond_d
    iget-object v0, p0, Lo/anr;->bys:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_d
    xor-int/2addr v1, v0

    .line 320
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 321
    iget-object v0, p0, Lo/anr;->byt:Ljava/lang/Double;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_e

    :cond_e
    iget-object v0, p0, Lo/anr;->byt:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_e
    xor-int/2addr v1, v0

    .line 322
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 323
    iget-object v0, p0, Lo/anr;->byu:Ljava/lang/Integer;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_f

    :cond_f
    iget-object v0, p0, Lo/anr;->byu:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_f
    xor-int/2addr v1, v0

    .line 324
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 325
    iget-object v0, p0, Lo/anr;->byv:Ljava/lang/String;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_10

    :cond_10
    iget-object v0, p0, Lo/anr;->byv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    xor-int/2addr v1, v0

    .line 326
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 327
    iget-object v0, p0, Lo/anr;->byw:Ljava/lang/String;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_11

    :cond_11
    iget-object v0, p0, Lo/anr;->byw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    xor-int/2addr v1, v0

    .line 328
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 329
    iget-object v0, p0, Lo/anr;->byx:Ljava/lang/String;

    if-nez v0, :cond_12

    const/4 v0, 0x0

    goto :goto_12

    :cond_12
    iget-object v0, p0, Lo/anr;->byx:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12
    xor-int/2addr v1, v0

    .line 330
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message{version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anr;->byn:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anr;->bxq:Lo/anu;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anr;->bnm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anr;->nD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "participantIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anr;->bym:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ntp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anr;->bNU:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anr;->oM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anr;->byq:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anr;->mY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anr;->bpx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anr;->bpy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "initials="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anr;->bpz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "profileImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anr;->Tk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anr;->byp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestampPlaybackOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anr;->byr:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anr;->bys:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anr;->byt:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "invitedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anr;->byu:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "broadcasterBlockedMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anr;->byv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "broadcasterBlockedUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anr;->byw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "broadcasterBlockedUsername="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/anr;->byx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
