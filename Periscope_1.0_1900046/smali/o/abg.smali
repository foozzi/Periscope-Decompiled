.class public Lo/abg;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bqH:Ltv/periscope/android/util/Size;

.field private bvq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/abk;>;"
        }
    .end annotation
.end field

.field private bvr:I

.field private bvs:I

.field private bvt:Ltv/periscope/android/util/Size;

.field private bvu:Ltv/periscope/android/util/Size;

.field private bvv:I

.field private bvw:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/abg;->bvq:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method vQ()V
    .locals 3

    .line 65
    iget-object v0, p0, Lo/abg;->bvq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/abk;

    move-object v2, v0

    .line 66
    invoke-virtual {v2}, Lo/abk;->vQ()V

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lo/abg;->bvq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    return-void
.end method

.method public ˊ(Lo/abi;Lo/abi;Lo/abj;Lo/abo;)Lo/abk;
    .locals 9

    .line 72
    const/4 v6, 0x0

    .line 73
    iget-object v0, p0, Lo/abg;->bvq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/abk;

    move-object v8, v0

    .line 74
    invoke-virtual {p3, v8}, Lo/abj;->ˊ(Lo/abk;)V

    .line 75
    instance-of v0, p4, Lo/abn;

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_1

    :cond_0
    move-object v0, p1

    :goto_1
    invoke-virtual {p3, v0}, Lo/abj;->ˊ(Lo/abi;)V

    .line 76
    const-string v0, "Mirror"

    invoke-virtual {p1, v0}, Lo/abi;->ﹿ(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 77
    const-string v0, "Texture0"

    const/16 v1, 0x2601

    const v2, 0x812f

    invoke-virtual {p3, v0, p4, v1, v2}, Lo/abj;->ˊ(Ljava/lang/String;Lo/abo;II)V

    .line 78
    invoke-virtual {p3}, Lo/abj;->vX()V

    .line 79
    invoke-virtual {v8}, Lo/abk;->vY()Lo/abo;

    move-result-object p4

    .line 80
    move-object v6, v8

    .line 81
    invoke-virtual {p3}, Lo/abj;->wr()V

    .line 82
    invoke-virtual {p3}, Lo/abj;->ws()V

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    instance-of v0, p4, Lo/abn;

    if-eqz v0, :cond_2

    move-object v0, p2

    goto :goto_2

    :cond_2
    move-object v0, p1

    :goto_2
    invoke-virtual {p3, v0}, Lo/abj;->ˊ(Lo/abi;)V

    .line 85
    const-string v0, "Texture0"

    const/16 v1, 0x2601

    const v2, 0x812f

    invoke-virtual {p3, v0, p4, v1, v2}, Lo/abj;->ˊ(Ljava/lang/String;Lo/abo;II)V

    .line 86
    const-string v0, "Mirror"

    invoke-virtual {p1, v0}, Lo/abi;->ﹿ(Ljava/lang/String;)I

    move-result v0

    iget-boolean v1, p0, Lo/abg;->bvw:Z

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 87
    move-object v0, p3

    iget v1, p0, Lo/abg;->bvr:I

    iget v2, p0, Lo/abg;->bvs:I

    iget-object v3, p0, Lo/abg;->bqH:Ltv/periscope/android/util/Size;

    invoke-virtual {v3}, Ltv/periscope/android/util/Size;->width()I

    move-result v3

    iget-object v4, p0, Lo/abg;->bqH:Ltv/periscope/android/util/Size;

    invoke-virtual {v4}, Ltv/periscope/android/util/Size;->height()I

    move-result v4

    iget v5, p0, Lo/abg;->bvv:I

    invoke-virtual/range {v0 .. v5}, Lo/abj;->ʼ(IIIII)V

    .line 88
    invoke-virtual {p3}, Lo/abj;->wr()V

    .line 89
    return-object v6
.end method

.method ˊ(Ltv/periscope/android/util/Size;Ltv/periscope/android/util/Size;IZ)V
    .locals 11

    .line 25
    iput-boolean p4, p0, Lo/abg;->bvw:Z

    .line 27
    iget-object v0, p0, Lo/abg;->bvt:Ltv/periscope/android/util/Size;

    invoke-virtual {p1, v0}, Ltv/periscope/android/util/Size;->ˊ(Ltv/periscope/android/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/abg;->bvu:Ltv/periscope/android/util/Size;

    invoke-virtual {p2, v0}, Ltv/periscope/android/util/Size;->ˊ(Ltv/periscope/android/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/abg;->bvv:I

    if-ne p3, v0, :cond_0

    .line 28
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Lo/abg;->vQ()V

    .line 33
    invoke-virtual {p2}, Ltv/periscope/android/util/Size;->Ay()F

    move-result v4

    .line 34
    invoke-virtual {p1, p3}, Ltv/periscope/android/util/Size;->Ꭸ(I)Ltv/periscope/android/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/util/Size;->Ay()F

    move-result v5

    .line 38
    cmpg-float v0, v4, v5

    if-gez v0, :cond_1

    .line 39
    invoke-virtual {p2}, Ltv/periscope/android/util/Size;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    invoke-virtual {p2}, Ltv/periscope/android/util/Size;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/Size;->ˑ(FF)Ltv/periscope/android/util/Size;

    move-result-object v6

    .line 40
    invoke-virtual {p2}, Ltv/periscope/android/util/Size;->height()I

    move-result v0

    invoke-virtual {v6}, Ltv/periscope/android/util/Size;->height()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/abg;->bvr:I

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p2}, Ltv/periscope/android/util/Size;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Ltv/periscope/android/util/Size;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-static {v0, v1}, Ltv/periscope/android/util/Size;->ˑ(FF)Ltv/periscope/android/util/Size;

    move-result-object v6

    .line 43
    invoke-virtual {p2}, Ltv/periscope/android/util/Size;->height()I

    move-result v0

    invoke-virtual {v6}, Ltv/periscope/android/util/Size;->height()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/abg;->bvs:I

    .line 46
    :goto_0
    invoke-virtual {p1}, Ltv/periscope/android/util/Size;->width()I

    move-result v7

    .line 47
    invoke-virtual {p1}, Ltv/periscope/android/util/Size;->height()I

    move-result v8

    .line 48
    invoke-virtual {v6, p3}, Ltv/periscope/android/util/Size;->Ꭸ(I)Ltv/periscope/android/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/util/Size;->width()I

    move-result v9

    .line 49
    invoke-virtual {v6, p3}, Ltv/periscope/android/util/Size;->Ꭸ(I)Ltv/periscope/android/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/util/Size;->height()I

    move-result v10

    .line 51
    iput-object v6, p0, Lo/abg;->bqH:Ltv/periscope/android/util/Size;

    .line 52
    iput p3, p0, Lo/abg;->bvv:I

    .line 53
    iput-object p2, p0, Lo/abg;->bvu:Ltv/periscope/android/util/Size;

    .line 54
    iput-object p1, p0, Lo/abg;->bvt:Ltv/periscope/android/util/Size;

    .line 57
    :goto_1
    div-int/lit8 v0, v7, 0x2

    if-le v0, v9, :cond_2

    div-int/lit8 v0, v8, 0x2

    if-le v0, v10, :cond_2

    .line 58
    div-int/lit8 v7, v7, 0x2

    .line 59
    div-int/lit8 v8, v8, 0x2

    .line 60
    iget-object v0, p0, Lo/abg;->bvq:Ljava/util/List;

    new-instance v1, Lo/abk;

    const/16 v2, 0x1907

    const/16 v3, 0x1401

    invoke-direct {v1, v7, v8, v2, v3}, Lo/abk;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 62
    :cond_2
    return-void
.end method
