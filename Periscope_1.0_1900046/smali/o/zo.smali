.class public abstract Lo/zo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lo/zz<TT;>;"
    }
.end annotation


# instance fields
.field protected final bnA:Lo/aad;


# direct methods
.method public constructor <init>(Lo/aad;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lo/zo;->bnA:Lo/aad;

    .line 9
    return-void
.end method


# virtual methods
.method public Ị(Ljava/lang/String;)Lo/aah;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/zo;->bnA:Lo/aad;

    invoke-virtual {v0, p1}, Lo/aad;->זּ(Ljava/lang/String;)Lo/aah;

    move-result-object v0

    return-object v0
.end method
