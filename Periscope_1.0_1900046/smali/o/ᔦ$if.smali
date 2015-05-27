.class final Lo/ᔦ$if;
.super Lo/ᔦ$ʻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᔦ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "if"
.end annotation


# direct methods
.method public constructor <init>(Lo/ᔦ$aux;Lo/ᔦ$ʼ;)V
    .locals 2

    .line 220
    const/4 v0, 0x2

    new-array v0, v0, [Lo/ᔦ$ʻ;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lo/ᔦ$ʻ;-><init>(I[Lo/ᔦ$ʻ;)V

    .line 221
    return-void
.end method
