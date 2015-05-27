.class Lo/abl$ˎ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/abl$ᐝ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ce"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/abl$1;)V
    .locals 0

    .line 690
    invoke-direct {p0}, Lo/abl$ˎ;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 4

    .line 694
    const/4 v2, 0x0

    .line 696
    const/4 v0, 0x1

    :try_start_0
    new-array v3, v0, [I

    fill-array-data v3, :array_0

    .line 697
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v3, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 706
    goto :goto_0

    .line 698
    :catch_0
    move-exception v3

    .line 705
    const-string v0, "GLRenderView"

    const-string v1, "eglCreateWindowSurface"

    invoke-static {v0, v1, v3}, Lo/akk;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 707
    :goto_0
    return-object v2

    nop

    :array_0
    .array-data 4
        0x3038
    .end array-data
.end method

.method public ˊ(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)V
    .locals 1

    .line 712
    invoke-static {p1, p2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 713
    return-void
.end method
