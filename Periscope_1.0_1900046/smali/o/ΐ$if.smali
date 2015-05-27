.class Lo/ΐ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ΐ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/ڔ;Z)Lo/ץ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:Ljava/lang/Object;>(Lo/\u0694<TR;>;Z)Lo/\u05e5<TR;>;"
        }
    .end annotation

    .line 191
    new-instance v0, Lo/ץ;

    invoke-direct {v0, p1, p2}, Lo/ץ;-><init>(Lo/ڔ;Z)V

    return-object v0
.end method
