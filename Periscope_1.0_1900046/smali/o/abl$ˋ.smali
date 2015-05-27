.class Lo/abl$ˋ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/abl$aux;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02cb"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field final synthetic bvV:Lo/abl;


# direct methods
.method private constructor <init>(Lo/abl;)V
    .locals 1

    .line 652
    iput-object p1, p0, Lo/abl$ˋ;->bvV:Lo/abl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    const/16 v0, 0x3098

    iput v0, p0, Lo/abl$ˋ;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method synthetic constructor <init>(Lo/abl;Lo/abl$1;)V
    .locals 0

    .line 652
    invoke-direct {p0, p1}, Lo/abl$ˋ;-><init>(Lo/abl;)V

    return-void
.end method


# virtual methods
.method public ˊ(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;
    .locals 4

    .line 656
    const/4 v0, 0x3

    new-array v3, v0, [I

    iget v0, p0, Lo/abl$ˋ;->EGL_CONTEXT_CLIENT_VERSION:I

    const/4 v1, 0x0

    aput v0, v3, v1

    iget-object v0, p0, Lo/abl$ˋ;->bvV:Lo/abl;

    invoke-static {v0}, Lo/abl;->ˋ(Lo/abl;)I

    move-result v0

    const/4 v1, 0x1

    aput v0, v3, v1

    const/16 v0, 0x3038

    const/4 v1, 0x2

    aput v0, v3, v1

    .line 659
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iget-object v1, p0, Lo/abl$ˋ;->bvV:Lo/abl;

    invoke-static {v1}, Lo/abl;->ˋ(Lo/abl;)I

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)V
    .locals 3

    .line 665
    invoke-static {p1, p2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    const-string v0, "DefaultContextFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐨ(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v0, "eglDestroyContex"

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v0, v1}, Lo/abl$ʻ;->ʽ(Ljava/lang/String;I)V

    .line 672
    :cond_0
    return-void
.end method
