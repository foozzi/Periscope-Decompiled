.class Lo/abl$ˊ;
.super Lo/abl$if;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02ca"
.end annotation


# instance fields
.field final synthetic bvV:Lo/abl;

.field private bvW:[I

.field protected bvX:I

.field protected bvY:I

.field protected bvZ:I

.field protected bwa:I

.field protected bwb:I

.field protected bwc:I


# direct methods
.method public constructor <init>(Lo/abl;IIIIII)V
    .locals 3

    .line 798
    iput-object p1, p0, Lo/abl$ˊ;->bvV:Lo/abl;

    .line 799
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/16 v1, 0x3024

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p2, v0, v1

    const/16 v1, 0x3023

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x3

    aput p3, v0, v1

    const/16 v1, 0x3022

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v1, 0x5

    aput p4, v0, v1

    const/16 v1, 0x3021

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v1, 0x7

    aput p5, v0, v1

    const/16 v1, 0x3025

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0x9

    aput p6, v0, v1

    const/16 v1, 0x3026

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0xb

    aput p7, v0, v1

    const/16 v1, 0x3038

    const/16 v2, 0xc

    aput v1, v0, v2

    invoke-direct {p0, p1, v0}, Lo/abl$if;-><init>(Lo/abl;[I)V

    .line 807
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lo/abl$ˊ;->bvW:[I

    .line 808
    iput p2, p0, Lo/abl$ˊ;->bvX:I

    .line 809
    iput p3, p0, Lo/abl$ˊ;->bvY:I

    .line 810
    iput p4, p0, Lo/abl$ˊ;->bvZ:I

    .line 811
    iput p5, p0, Lo/abl$ˊ;->bwa:I

    .line 812
    iput p6, p0, Lo/abl$ˊ;->bwb:I

    .line 813
    iput p7, p0, Lo/abl$ˊ;->bwc:I

    .line 814
    return-void
.end method

.method private ˊ(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I
    .locals 2

    .line 845
    iget-object v0, p0, Lo/abl$ˊ;->bvW:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lo/abl$ˊ;->bvW:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 848
    :cond_0
    return p4
.end method


# virtual methods
.method public ˊ(Landroid/opengl/EGLDisplay;[Landroid/opengl/EGLConfig;)Landroid/opengl/EGLConfig;
    .locals 12

    .line 819
    move-object v2, p2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 820
    const/16 v0, 0x3025

    const/4 v1, 0x0

    invoke-direct {p0, p1, v5, v0, v1}, Lo/abl$ˊ;->ˊ(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v6

    .line 822
    const/16 v0, 0x3026

    const/4 v1, 0x0

    invoke-direct {p0, p1, v5, v0, v1}, Lo/abl$ˊ;->ˊ(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v7

    .line 824
    iget v0, p0, Lo/abl$ˊ;->bwb:I

    if-lt v6, v0, :cond_0

    iget v0, p0, Lo/abl$ˊ;->bwc:I

    if-lt v7, v0, :cond_0

    .line 825
    const/16 v0, 0x3024

    const/4 v1, 0x0

    invoke-direct {p0, p1, v5, v0, v1}, Lo/abl$ˊ;->ˊ(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v8

    .line 827
    const/16 v0, 0x3023

    const/4 v1, 0x0

    invoke-direct {p0, p1, v5, v0, v1}, Lo/abl$ˊ;->ˊ(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v9

    .line 829
    const/16 v0, 0x3022

    const/4 v1, 0x0

    invoke-direct {p0, p1, v5, v0, v1}, Lo/abl$ˊ;->ˊ(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v10

    .line 831
    const/16 v0, 0x3021

    const/4 v1, 0x0

    invoke-direct {p0, p1, v5, v0, v1}, Lo/abl$ˊ;->ˊ(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v11

    .line 833
    iget v0, p0, Lo/abl$ˊ;->bvX:I

    if-ne v8, v0, :cond_0

    iget v0, p0, Lo/abl$ˊ;->bvY:I

    if-ne v9, v0, :cond_0

    iget v0, p0, Lo/abl$ˊ;->bvZ:I

    if-ne v10, v0, :cond_0

    iget v0, p0, Lo/abl$ˊ;->bwa:I

    if-ne v11, v0, :cond_0

    .line 835
    return-object v5

    .line 819
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 839
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
