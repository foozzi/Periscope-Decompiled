.class Lo/abl$ʻ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02bb"
.end annotation


# instance fields
.field private bwd:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<Lo/abl;>;"
        }
    .end annotation
.end field

.field bwe:Landroid/opengl/EGLDisplay;

.field bwf:Landroid/opengl/EGLSurface;

.field bwg:Landroid/opengl/EGLConfig;

.field bwh:Landroid/opengl/EGLContext;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/ref/WeakReference<Lo/abl;>;)V"
        }
    .end annotation

    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    iput-object p1, p0, Lo/abl$ʻ;->bwd:Ljava/lang/ref/WeakReference;

    .line 879
    return-void
.end method

.method private we()V
    .locals 5

    .line 1010
    iget-object v0, p0, Lo/abl$ʻ;->bwf:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/abl$ʻ;->bwf:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 1011
    iget-object v0, p0, Lo/abl$ʻ;->bwe:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 1014
    iget-object v0, p0, Lo/abl$ʻ;->bwd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/abl;

    move-object v4, v0

    .line 1015
    if-eqz v4, :cond_0

    .line 1016
    invoke-static {v4}, Lo/abl;->ᐝ(Lo/abl;)Lo/abl$ᐝ;

    move-result-object v0

    iget-object v1, p0, Lo/abl$ʻ;->bwe:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lo/abl$ʻ;->bwf:Landroid/opengl/EGLSurface;

    invoke-interface {v0, v1, v2}, Lo/abl$ᐝ;->ˊ(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)V

    .line 1018
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lo/abl$ʻ;->bwf:Landroid/opengl/EGLSurface;

    .line 1020
    :cond_1
    return-void
.end method

.method public static ʽ(Ljava/lang/String;I)V
    .locals 2

    .line 1044
    invoke-static {p0, p1}, Lo/abl$ʻ;->ͺ(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1049
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ˋ(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1053
    invoke-static {p1, p2}, Lo/abl$ʻ;->ͺ(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lo/akk;->ᐧ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    return-void
.end method

.method public static ͺ(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ﺘ(Ljava/lang/String;)V
    .locals 1

    .line 1040
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lo/abl$ʻ;->ʽ(Ljava/lang/String;I)V

    .line 1041
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 1026
    iget-object v0, p0, Lo/abl$ʻ;->bwh:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_1

    .line 1027
    iget-object v0, p0, Lo/abl$ʻ;->bwd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/abl;

    move-object v3, v0

    .line 1028
    if-eqz v3, :cond_0

    .line 1029
    invoke-static {v3}, Lo/abl;->ˏ(Lo/abl;)Lo/abl$aux;

    move-result-object v0

    iget-object v1, p0, Lo/abl$ʻ;->bwe:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lo/abl$ʻ;->bwh:Landroid/opengl/EGLContext;

    invoke-interface {v0, v1, v2}, Lo/abl$aux;->ˊ(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)V

    .line 1031
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lo/abl$ʻ;->bwh:Landroid/opengl/EGLContext;

    .line 1033
    :cond_1
    iget-object v0, p0, Lo/abl$ʻ;->bwe:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 1034
    iget-object v0, p0, Lo/abl$ʻ;->bwe:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 1035
    const/4 v0, 0x0

    iput-object v0, p0, Lo/abl$ʻ;->bwe:Landroid/opengl/EGLDisplay;

    .line 1037
    :cond_2
    return-void
.end method

.method public start()V
    .locals 6

    .line 892
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lo/abl$ʻ;->bwe:Landroid/opengl/EGLDisplay;

    .line 894
    iget-object v0, p0, Lo/abl$ʻ;->bwe:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 895
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_0
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 902
    const/4 v0, 0x2

    new-array v4, v0, [I

    .line 903
    iget-object v0, p0, Lo/abl$ʻ;->bwe:Landroid/opengl/EGLDisplay;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 904
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_1
    iget-object v0, p0, Lo/abl$ʻ;->bwd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/abl;

    move-object v5, v0

    .line 907
    if-nez v5, :cond_2

    .line 908
    const/4 v0, 0x0

    iput-object v0, p0, Lo/abl$ʻ;->bwg:Landroid/opengl/EGLConfig;

    .line 909
    const/4 v0, 0x0

    iput-object v0, p0, Lo/abl$ʻ;->bwh:Landroid/opengl/EGLContext;

    goto :goto_0

    .line 911
    :cond_2
    invoke-static {v5}, Lo/abl;->ˎ(Lo/abl;)Lo/abl$ˏ;

    move-result-object v0

    iget-object v1, p0, Lo/abl$ʻ;->bwe:Landroid/opengl/EGLDisplay;

    invoke-interface {v0, v1}, Lo/abl$ˏ;->ˊ(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lo/abl$ʻ;->bwg:Landroid/opengl/EGLConfig;

    .line 917
    invoke-static {v5}, Lo/abl;->ˏ(Lo/abl;)Lo/abl$aux;

    move-result-object v0

    iget-object v1, p0, Lo/abl$ʻ;->bwe:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lo/abl$ʻ;->bwg:Landroid/opengl/EGLConfig;

    invoke-interface {v0, v1, v2}, Lo/abl$aux;->ˊ(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lo/abl$ʻ;->bwh:Landroid/opengl/EGLContext;

    .line 919
    :goto_0
    iget-object v0, p0, Lo/abl$ʻ;->bwh:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/abl$ʻ;->bwh:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v1, :cond_4

    .line 920
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lo/abl$ʻ;->bwh:Landroid/opengl/EGLContext;

    .line 921
    const-string v0, "createContext"

    invoke-direct {p0, v0}, Lo/abl$ʻ;->ﺘ(Ljava/lang/String;)V

    .line 927
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lo/abl$ʻ;->bwf:Landroid/opengl/EGLSurface;

    .line 928
    return-void
.end method

.method public wb()Z
    .locals 6

    .line 943
    iget-object v0, p0, Lo/abl$ʻ;->bwe:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_0

    .line 944
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 946
    :cond_0
    iget-object v0, p0, Lo/abl$ʻ;->bwg:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_1

    .line 947
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 954
    :cond_1
    invoke-direct {p0}, Lo/abl$ʻ;->we()V

    .line 959
    iget-object v0, p0, Lo/abl$ʻ;->bwd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/abl;

    move-object v4, v0

    .line 960
    if-eqz v4, :cond_2

    .line 961
    invoke-static {v4}, Lo/abl;->ᐝ(Lo/abl;)Lo/abl$ᐝ;

    move-result-object v0

    iget-object v1, p0, Lo/abl$ʻ;->bwe:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lo/abl$ʻ;->bwg:Landroid/opengl/EGLConfig;

    invoke-virtual {v4}, Lo/abl;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lo/abl$ᐝ;->ˊ(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lo/abl$ʻ;->bwf:Landroid/opengl/EGLSurface;

    goto :goto_0

    .line 964
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lo/abl$ʻ;->bwf:Landroid/opengl/EGLSurface;

    .line 967
    :goto_0
    iget-object v0, p0, Lo/abl$ʻ;->bwf:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/abl$ʻ;->bwf:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_5

    .line 968
    :cond_3
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v5

    .line 969
    const/16 v0, 0x300b

    if-ne v5, v0, :cond_4

    .line 970
    const-string v0, "EglHelper"

    const-string v1, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v0, v1}, Lo/akk;->ᐨ(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 979
    :cond_5
    iget-object v0, p0, Lo/abl$ʻ;->bwe:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lo/abl$ʻ;->bwf:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lo/abl$ʻ;->bwf:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lo/abl$ʻ;->bwh:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 984
    const-string v0, "EGLHelper"

    const-string v1, "eglMakeCurrent"

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v0, v1, v2}, Lo/abl$ʻ;->ˋ(Ljava/lang/String;Ljava/lang/String;I)V

    .line 985
    const/4 v0, 0x0

    return v0

    .line 988
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public wc()I
    .locals 2

    .line 996
    iget-object v0, p0, Lo/abl$ʻ;->bwe:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lo/abl$ʻ;->bwf:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 997
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    return v0

    .line 999
    :cond_0
    const/16 v0, 0x3000

    return v0
.end method

.method public wd()V
    .locals 0

    .line 1006
    invoke-direct {p0}, Lo/abl$ʻ;->we()V

    .line 1007
    return-void
.end method
