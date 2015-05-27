.class public Lo/abh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/abh$if;,
        Lo/abh$ˊ;,
        Lo/abh$ˋ;
    }
.end annotation


# instance fields
.field private bvA:Landroid/opengl/EGLContext;

.field private bvB:Z

.field private bvC:Z

.field private bvD:Landroid/view/Surface;

.field private bvx:Landroid/opengl/EGLSurface;

.field private bvy:Landroid/opengl/EGLDisplay;

.field private bvz:Landroid/opengl/EGLConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lo/abh;->bvD:Landroid/view/Surface;

    .line 30
    return-void
.end method


# virtual methods
.method public vQ()V
    .locals 4

    .line 132
    iget-object v0, p0, Lo/abh;->bvy:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lo/abh;->bvy:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 137
    iget-object v0, p0, Lo/abh;->bvy:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lo/abh;->bvx:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 138
    iget-object v0, p0, Lo/abh;->bvy:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lo/abh;->bvA:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 139
    iget-object v0, p0, Lo/abh;->bvy:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lo/abh;->bvA:Landroid/opengl/EGLContext;

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lo/abh;->bvx:Landroid/opengl/EGLSurface;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lo/abh;->bvy:Landroid/opengl/EGLDisplay;

    .line 143
    iget-object v0, p0, Lo/abh;->bvD:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lo/abh;->bvD:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lo/abh;->bvD:Landroid/view/Surface;

    .line 147
    :cond_1
    return-void
.end method

.method public vR()Landroid/opengl/EGLContext;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/abh;->bvA:Landroid/opengl/EGLContext;

    return-object v0
.end method

.method public vS()Z
    .locals 6

    .line 104
    iget-boolean v0, p0, Lo/abh;->bvB:Z

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unbalanced calls to makeCurrent/unsetCurrent!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    const/4 v4, 0x1

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/abh;->bvC:Z

    .line 109
    iget-object v0, p0, Lo/abh;->bvA:Landroid/opengl/EGLContext;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lo/abh;->bvy:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lo/abh;->bvx:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lo/abh;->bvx:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lo/abh;->bvA:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v5

    .line 112
    if-eqz v5, :cond_1

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 113
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/abh;->bvC:Z

    .line 115
    :cond_2
    if-eqz v4, :cond_3

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/abh;->bvB:Z

    .line 118
    :cond_3
    return v4
.end method

.method public vT()Z
    .locals 5

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/abh;->bvB:Z

    .line 123
    iget-boolean v0, p0, Lo/abh;->bvC:Z

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lo/abh;->bvy:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v4

    .line 126
    if-eqz v4, :cond_0

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 128
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public vU()V
    .locals 2

    .line 170
    iget-object v0, p0, Lo/abh;->bvy:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lo/abh;->bvx:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 171
    return-void
.end method

.method public vV()Lo/abl$aux;
    .locals 1

    .line 174
    new-instance v0, Lo/abh$ˊ;

    invoke-direct {v0, p0}, Lo/abh$ˊ;-><init>(Lo/abh;)V

    return-object v0
.end method

.method public vW()Lo/abl$ˏ;
    .locals 1

    .line 178
    new-instance v0, Lo/abh$if;

    invoke-direct {v0}, Lo/abh$if;-><init>()V

    return-object v0
.end method

.method public ʵ(J)V
    .locals 2

    .line 166
    iget-object v0, p0, Lo/abh;->bvy:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lo/abh;->bvx:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 167
    return-void
.end method

.method public declared-synchronized ˊ(Lo/abh$ˋ;)Z
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lo/abh;->vS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {p1}, Lo/abh$ˋ;->uB()V

    .line 98
    invoke-virtual {p0}, Lo/abh;->vT()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public ˊ(Lo/abh;Landroid/view/Surface;)Z
    .locals 17

    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/abh;->bvy:Landroid/opengl/EGLDisplay;

    .line 34
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/abh;->bvy:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    return v0

    .line 38
    :cond_0
    const/16 v0, 0xf

    new-array v8, v0, [I

    const/16 v0, 0x3024

    const/4 v1, 0x0

    aput v0, v8, v1

    const/16 v0, 0x8

    const/4 v1, 0x1

    aput v0, v8, v1

    const/16 v0, 0x3023

    const/4 v1, 0x2

    aput v0, v8, v1

    const/16 v0, 0x8

    const/4 v1, 0x3

    aput v0, v8, v1

    const/16 v0, 0x3022

    const/4 v1, 0x4

    aput v0, v8, v1

    const/16 v0, 0x8

    const/4 v1, 0x5

    aput v0, v8, v1

    const/16 v0, 0x3021

    const/4 v1, 0x6

    aput v0, v8, v1

    const/4 v0, 0x0

    const/4 v1, 0x7

    aput v0, v8, v1

    const/16 v0, 0x3033

    const/16 v1, 0x8

    aput v0, v8, v1

    const/4 v0, 0x5

    const/16 v1, 0x9

    aput v0, v8, v1

    const/16 v0, 0x3040

    const/16 v1, 0xa

    aput v0, v8, v1

    const/4 v0, 0x4

    const/16 v1, 0xb

    aput v0, v8, v1

    if-eqz p2, :cond_1

    const/16 v0, 0x3142

    goto :goto_0

    :cond_1
    const/16 v0, 0x3038

    :goto_0
    const/16 v1, 0xc

    aput v0, v8, v1

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x3038

    :goto_1
    const/16 v1, 0xd

    aput v0, v8, v1

    const/16 v0, 0x3038

    const/16 v1, 0xe

    aput v0, v8, v1

    .line 49
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 50
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/abh;->bvy:Landroid/opengl/EGLDisplay;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v10, v1, v9, v2}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 52
    const/4 v0, 0x0

    return v0

    .line 54
    :cond_3
    const/4 v0, 0x1

    new-array v11, v0, [Landroid/opengl/EGLConfig;

    .line 55
    const/4 v0, 0x1

    new-array v12, v0, [I

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/abh;->bvy:Landroid/opengl/EGLDisplay;

    move-object v1, v8

    move-object v3, v11

    move-object v6, v12

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 57
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_4
    const/4 v0, 0x0

    aget-object v0, v11, v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/abh;->bvz:Landroid/opengl/EGLConfig;

    .line 61
    const/4 v0, 0x3

    new-array v13, v0, [I

    fill-array-data v13, :array_0

    .line 65
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lo/abh;->vR()Landroid/opengl/EGLContext;

    move-result-object v14

    goto :goto_2

    :cond_5
    sget-object v14, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 66
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/abh;->bvy:Landroid/opengl/EGLDisplay;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/abh;->bvz:Landroid/opengl/EGLConfig;

    const/4 v2, 0x0

    invoke-static {v0, v1, v14, v13, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v15

    .line 69
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_6

    .line 70
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_6
    move-object/from16 v0, p0

    iput-object v15, v0, Lo/abh;->bvA:Landroid/opengl/EGLContext;

    .line 75
    if-eqz p2, :cond_7

    .line 76
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/abh;->bvD:Landroid/view/Surface;

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_1

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/abh;->bvy:Landroid/opengl/EGLDisplay;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/abh;->bvz:Landroid/opengl/EGLConfig;

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/abh;->bvx:Landroid/opengl/EGLSurface;

    .line 79
    goto :goto_3

    .line 80
    :cond_7
    const/4 v0, 0x5

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_2

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/abh;->bvy:Landroid/opengl/EGLDisplay;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/abh;->bvz:Landroid/opengl/EGLConfig;

    move-object/from16 v2, v16

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/abh;->bvx:Landroid/opengl/EGLSurface;

    .line 88
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/abh;->bvx:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_8

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    return v0

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3038
    .end array-data

    :array_2
    .array-data 4
        0x3057
        0x4
        0x3056
        0x4
        0x3038
    .end array-data
.end method

.method public ˋ(Landroid/view/Surface;)V
    .locals 4

    .line 150
    iget-boolean v0, p0, Lo/abh;->bvB:Z

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context must be current when calling bindSurface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    .line 154
    invoke-virtual {p0}, Lo/abh;->vT()Z

    .line 155
    iget-object v0, p0, Lo/abh;->bvy:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lo/abh;->bvx:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 156
    iget-object v0, p0, Lo/abh;->bvy:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lo/abh;->bvz:Landroid/opengl/EGLConfig;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v3, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lo/abh;->bvx:Landroid/opengl/EGLSurface;

    .line 158
    invoke-virtual {p0}, Lo/abh;->vS()Z

    .line 159
    iget-object v0, p0, Lo/abh;->bvD:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lo/abh;->bvD:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 162
    :cond_1
    iput-object p1, p0, Lo/abh;->bvD:Landroid/view/Surface;

    .line 163
    return-void

    :array_0
    .array-data 4
        0x3038
    .end array-data
.end method
