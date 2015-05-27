.class Lo/abh$ˊ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/abl$aux;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation


# instance fields
.field private bvE:Lo/abh;


# direct methods
.method public constructor <init>(Lo/abh;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lo/abh$ˊ;->bvE:Lo/abh;

    .line 188
    return-void
.end method


# virtual methods
.method public ˊ(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;
    .locals 1

    .line 192
    iget-object v0, p0, Lo/abh$ˊ;->bvE:Lo/abh;

    invoke-virtual {v0}, Lo/abh;->vR()Landroid/opengl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)V
    .locals 0

    .line 197
    return-void
.end method
