.class Lo/abh$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/abl$ˏ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    return-void
.end method


# virtual methods
.method public ˊ(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;
    .locals 11

    .line 208
    const/16 v0, 0xb

    new-array v8, v0, [I

    fill-array-data v8, :array_0

    .line 217
    const/4 v0, 0x1

    new-array v9, v0, [Landroid/opengl/EGLConfig;

    .line 218
    const/4 v0, 0x1

    new-array v10, v0, [I

    .line 219
    move-object v0, p1

    move-object v1, v8

    move-object v3, v9

    move-object v6, v10

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 220
    const/4 v0, 0x0

    aget-object v0, v9, v0

    return-object v0

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3040
        0x4
        0x3038
    .end array-data
.end method
