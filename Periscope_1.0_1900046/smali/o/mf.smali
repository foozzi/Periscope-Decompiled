.class public Lo/mf;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final response:Lretrofit/client/Response;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Lretrofit/client/Response;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lo/mf;->data:Ljava/lang/Object;

    .line 16
    iput-object p2, p0, Lo/mf;->response:Lretrofit/client/Response;

    .line 17
    return-void
.end method
