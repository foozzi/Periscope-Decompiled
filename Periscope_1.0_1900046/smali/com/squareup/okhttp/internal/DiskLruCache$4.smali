.class final Lcom/squareup/okhttp/internal/DiskLruCache$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/uz;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 823
    return-void
.end method

.method public flush()V
    .locals 0

    .line 816
    return-void
.end method

.method public timeout()Lo/vb;
    .locals 1

    .line 819
    sget-object v0, Lo/vb;->NONE:Lo/vb;

    return-object v0
.end method

.method public write(Lo/ue;J)V
    .locals 0

    .line 812
    invoke-virtual {p1, p2, p3}, Lo/ue;->ᵋ(J)V

    .line 813
    return-void
.end method
