.class public final Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;
.super Ljava/lang/Object;
.source "ScratchPresenterImpl.kt"

# interfaces
.implements Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;
.implements Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;
.implements Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;
.implements Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase$GettingLatestProjectCallback;
.implements Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase$CreatingProjectCallback;
.implements Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase$UpdatingProjectCallback;
.implements Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScratchPresenterImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScratchPresenterImpl.kt\ncom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl\n*L\n1#1,956:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u00d0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008/\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0003\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001c\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u0007B-\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J\u0010\u0010k\u001a\u00020l2\u0006\u0010m\u001a\u00020\u0014H\u0016J\u0010\u0010n\u001a\u00020l2\u0006\u0010o\u001a\u00020pH\u0016J\u0010\u0010q\u001a\u00020l2\u0006\u0010r\u001a\u00020$H\u0016J\u0008\u0010s\u001a\u00020lH\u0016J\u0010\u0010t\u001a\u00020l2\u0006\u0010u\u001a\u00020$H\u0016J\u0012\u0010v\u001a\u00020l2\u0008\u0010w\u001a\u0004\u0018\u00010$H\u0016J\u0012\u0010x\u001a\u00020l2\u0008\u0010w\u001a\u0004\u0018\u00010$H\u0016J\u0008\u0010y\u001a\u00020\u0014H\u0016J\u0010\u0010z\u001a\u00020l2\u0006\u0010{\u001a\u00020|H\u0016J\u0008\u0010}\u001a\u00020lH\u0016J\u0008\u0010~\u001a\u00020lH\u0016J\u0008\u0010\u007f\u001a\u00020lH\u0016J\u0012\u0010\u0080\u0001\u001a\u00020l2\u0007\u0010\u0081\u0001\u001a\u00020\u0014H\u0016J\t\u0010\u0082\u0001\u001a\u00020lH\u0016J\t\u0010\u0083\u0001\u001a\u00020lH\u0016J\t\u0010\u0084\u0001\u001a\u00020lH\u0002J\t\u0010\u0085\u0001\u001a\u00020$H\u0002J\t\u0010\u0086\u0001\u001a\u00020lH\u0016J\t\u0010\u0087\u0001\u001a\u00020\u0014H\u0016J\t\u0010\u0088\u0001\u001a\u00020lH\u0016J\u0013\u0010\u0089\u0001\u001a\u00020l2\u0008\u0010\u008a\u0001\u001a\u00030\u008b\u0001H\u0016J\u0013\u0010\u008c\u0001\u001a\u00020l2\u0008\u0010\u008a\u0001\u001a\u00030\u008b\u0001H\u0016J\t\u0010\u008d\u0001\u001a\u00020\u0014H\u0016J\u0013\u0010\u008e\u0001\u001a\u00020l2\u0008\u0010\u008f\u0001\u001a\u00030\u0090\u0001H\u0016J\t\u0010\u0091\u0001\u001a\u00020lH\u0016J\u0019\u0010\u0092\u0001\u001a\u00020l2\u0006\u0010{\u001a\u0002002\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\t\u0010\u0093\u0001\u001a\u00020lH\u0016J\t\u0010\u0094\u0001\u001a\u00020lH\u0016J\u0013\u0010\u0095\u0001\u001a\u00020l2\u0008\u0010\u008f\u0001\u001a\u00030\u0090\u0001H\u0016J\u0013\u0010\u0096\u0001\u001a\u00020l2\u0008\u0010\u008f\u0001\u001a\u00030\u0090\u0001H\u0016J\t\u0010\u0097\u0001\u001a\u00020lH\u0016J\t\u0010\u0098\u0001\u001a\u00020lH\u0016J\t\u0010\u0099\u0001\u001a\u00020lH\u0016J\u0013\u0010\u009a\u0001\u001a\u00020l2\u0008\u0010\u009b\u0001\u001a\u00030\u009c\u0001H\u0016J\u0011\u0010\u009d\u0001\u001a\u00020l2\u0006\u0010{\u001a\u000200H\u0016J\u0013\u0010\u009e\u0001\u001a\u00020l2\u0008\u0010\u009b\u0001\u001a\u00030\u009c\u0001H\u0016J\t\u0010\u009f\u0001\u001a\u00020lH\u0016J\u0013\u0010\u00a0\u0001\u001a\u00020l2\u0008\u0010\u009b\u0001\u001a\u00030\u009c\u0001H\u0016J\u0019\u0010\u00a1\u0001\u001a\u00020l2\u000e\u0010\u00a2\u0001\u001a\t\u0012\u0004\u0012\u0002000\u00a3\u0001H\u0016J\u0013\u0010\u00a4\u0001\u001a\u00020l2\u0008\u0010\u00a5\u0001\u001a\u00030\u00a6\u0001H\u0016J\u001f\u0010\u00a7\u0001\u001a\u00020l2\t\u0010\u00a8\u0001\u001a\u0004\u0018\u00010$2\t\u0010\u00a9\u0001\u001a\u0004\u0018\u00010$H\u0016J \u0010\u00aa\u0001\u001a\u00020l2\t\u0010\u00a8\u0001\u001a\u0004\u0018\u00010$2\n\u0010\u00ab\u0001\u001a\u0005\u0018\u00010\u00ac\u0001H\u0016J \u0010\u00ad\u0001\u001a\u00020l2\t\u0010\u00a8\u0001\u001a\u0004\u0018\u00010$2\n\u0010\u00ae\u0001\u001a\u0005\u0018\u00010\u00af\u0001H\u0016J\u001f\u0010\u00b0\u0001\u001a\u00020l2\t\u0010\u00a8\u0001\u001a\u0004\u0018\u00010$2\t\u0010\u00b1\u0001\u001a\u0004\u0018\u00010$H\u0016J\t\u0010\u00b2\u0001\u001a\u00020lH\u0016J*\u0010\u00b3\u0001\u001a\u00020l2\t\u0010\u00a8\u0001\u001a\u0004\u0018\u00010$2\n\u0010\u00ab\u0001\u001a\u0005\u0018\u00010\u00b4\u00012\u0008\u0010\u00b5\u0001\u001a\u00030\u00b6\u0001H\u0016J\t\u0010\u00b7\u0001\u001a\u00020lH\u0016J\u0014\u0010\u00b8\u0001\u001a\u00020l2\t\u0010\u00a8\u0001\u001a\u0004\u0018\u00010$H\u0016J\u0012\u0010\u00b9\u0001\u001a\u00020l2\u0007\u0010\u00ba\u0001\u001a\u00020$H\u0016J\t\u0010\u00bb\u0001\u001a\u00020lH\u0016J\u0013\u0010\u00bc\u0001\u001a\u00020l2\u0008\u0010\u009b\u0001\u001a\u00030\u009c\u0001H\u0016J\u0011\u0010\u00bd\u0001\u001a\u00020l2\u0006\u0010{\u001a\u000200H\u0016J\t\u0010\u00be\u0001\u001a\u00020lH\u0016J\t\u0010\u00bf\u0001\u001a\u00020lH\u0016J\t\u0010\u00c0\u0001\u001a\u00020lH\u0016J\t\u0010\u00c1\u0001\u001a\u00020lH\u0016J\t\u0010\u00c2\u0001\u001a\u00020lH\u0016J\u001a\u0010\u00c3\u0001\u001a\u00020l2\u0007\u0010\u00c4\u0001\u001a\u00020$2\u0006\u0010u\u001a\u00020$H\u0016J\u0012\u0010\u00c5\u0001\u001a\u00020l2\u0007\u0010\u00c6\u0001\u001a\u00020$H\u0016J\u0013\u0010\u00c7\u0001\u001a\u00020l2\u0008\u0010\u008f\u0001\u001a\u00030\u0090\u0001H\u0016J\u0013\u0010\u00c8\u0001\u001a\u00020l2\u0008\u0010\u008f\u0001\u001a\u00030\u0090\u0001H\u0016J\u0013\u0010\u00c9\u0001\u001a\u00020l2\u0008\u0010\u008f\u0001\u001a\u00030\u0090\u0001H\u0016J\u0011\u0010\u00ca\u0001\u001a\u00020l2\u0006\u0010u\u001a\u00020$H\u0016J\u0013\u0010\u00cb\u0001\u001a\u00020l2\u0008\u0010\u008f\u0001\u001a\u00030\u0090\u0001H\u0016J\t\u0010\u00cc\u0001\u001a\u00020lH\u0016J\u0013\u0010\u00cd\u0001\u001a\u00020l2\u0008\u0010\u008f\u0001\u001a\u00030\u0090\u0001H\u0016J\u0013\u0010\u00ce\u0001\u001a\u00020l2\u0008\u0010\u008f\u0001\u001a\u00030\u0090\u0001H\u0016J\u0013\u0010\u00cf\u0001\u001a\u00020l2\u0008\u0010\u008f\u0001\u001a\u00030\u0090\u0001H\u0016J\u0011\u0010\u00d0\u0001\u001a\u00020l2\u0006\u0010u\u001a\u00020$H\u0016J\u0011\u0010\u00d1\u0001\u001a\u00020l2\u0006\u0010{\u001a\u00020|H\u0016R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001c\u0010)\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010&\"\u0004\u0008+\u0010(R\u001c\u0010,\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010&\"\u0004\u0008.\u0010(R\u001c\u0010/\u001a\u0004\u0018\u000100X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106R\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108R\u001c\u00109\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010&\"\u0004\u0008;\u0010(R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010=R\u001c\u0010>\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010&\"\u0004\u0008@\u0010(R\u001c\u0010A\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010&\"\u0004\u0008C\u0010(R\u001c\u0010D\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010&\"\u0004\u0008F\u0010(R\u001a\u0010G\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR\u001c\u0010L\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010&\"\u0004\u0008N\u0010(R\u001c\u0010O\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010&\"\u0004\u0008Q\u0010(R\u0010\u0010R\u001a\u0004\u0018\u000100X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010S\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u0010&\"\u0004\u0008U\u0010(R\u001c\u0010V\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010&\"\u0004\u0008X\u0010(R\u001c\u0010Y\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Z\u0010&\"\u0004\u0008[\u0010(R\u001c\u0010\\\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008]\u0010&\"\u0004\u0008^\u0010(R\u0014\u0010_\u001a\u0008\u0012\u0004\u0012\u0002000`X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010a\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010&\"\u0004\u0008c\u0010(R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008d\u0010eR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008f\u0010gR\u001a\u0010h\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008i\u0010I\"\u0004\u0008j\u0010K\u00a8\u0006\u00d2\u0001"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;",
        "Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;",
        "Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;",
        "Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;",
        "Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase$GettingLatestProjectCallback;",
        "Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase$CreatingProjectCallback;",
        "Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase$UpdatingProjectCallback;",
        "Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;",
        "mView",
        "Lcom/everis/jibo/beamaker/ui/view/ScratchView;",
        "mGettingProjectsUseCase",
        "Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;",
        "mCreatingProjectUseCase",
        "Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;",
        "mUpdatingProjectUseCase",
        "Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;",
        "mDeletingProjectUseCase",
        "Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;",
        "(Lcom/everis/jibo/beamaker/ui/view/ScratchView;Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;)V",
        "executingFromXML",
        "",
        "fromInit",
        "fromSaveButton",
        "gson",
        "Lcom/google/gson/Gson;",
        "getGson",
        "()Lcom/google/gson/Gson;",
        "initialProject",
        "isCoolIdeaEnabled",
        "mBamJavascriptEvaluate",
        "Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;",
        "getMBamJavascriptEvaluate",
        "()Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;",
        "setMBamJavascriptEvaluate",
        "(Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;)V",
        "mBlockID",
        "",
        "getMBlockID",
        "()Ljava/lang/String;",
        "setMBlockID",
        "(Ljava/lang/String;)V",
        "mCancelBlockID",
        "getMCancelBlockID",
        "setMCancelBlockID",
        "mCancelTransactionID",
        "getMCancelTransactionID",
        "setMCancelTransactionID",
        "mCoolIdeaProject",
        "Lcom/everis/jibo/persistence/Project;",
        "getMCoolIdeaProject",
        "()Lcom/everis/jibo/persistence/Project;",
        "setMCoolIdeaProject",
        "(Lcom/everis/jibo/persistence/Project;)V",
        "getMCreatingProjectUseCase",
        "()Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;",
        "getMDeletingProjectUseCase",
        "()Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;",
        "mEntityTransactionID",
        "getMEntityTransactionID",
        "setMEntityTransactionID",
        "getMGettingProjectsUseCase",
        "()Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;",
        "mHeadTouchTransactionID",
        "getMHeadTouchTransactionID",
        "setMHeadTouchTransactionID",
        "mListenBlockID",
        "getMListenBlockID",
        "setMListenBlockID",
        "mListenTransactionID",
        "getMListenTransactionID",
        "setMListenTransactionID",
        "mPermission",
        "getMPermission",
        "()Z",
        "setMPermission",
        "(Z)V",
        "mPhotoBlockID",
        "getMPhotoBlockID",
        "setMPhotoBlockID",
        "mPhotoTransactionID",
        "getMPhotoTransactionID",
        "setMPhotoTransactionID",
        "mProject",
        "mRegisterMotionTransactionID",
        "getMRegisterMotionTransactionID",
        "setMRegisterMotionTransactionID",
        "mScreenGestureTransactionID",
        "getMScreenGestureTransactionID",
        "setMScreenGestureTransactionID",
        "mSetConfigBlockID",
        "getMSetConfigBlockID",
        "setMSetConfigBlockID",
        "mSetConfigTransactionID",
        "getMSetConfigTransactionID",
        "setMSetConfigTransactionID",
        "mSortedProjects",
        "Ljava/util/ArrayList;",
        "mTransactionID",
        "getMTransactionID",
        "setMTransactionID",
        "getMUpdatingProjectUseCase",
        "()Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;",
        "getMView",
        "()Lcom/everis/jibo/beamaker/ui/view/ScratchView;",
        "open",
        "getOpen",
        "setOpen",
        "changeProyect",
        "",
        "fromCoolIdea",
        "checkPermission",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "clearProject",
        "data",
        "coolIdeasLayout",
        "createInitialProject",
        "json",
        "createList",
        "name",
        "createVar",
        "currentProjectDeleted",
        "deleteProject",
        "project",
        "Lcom/everis/jibo/beamaker/data/ProjectEntity;",
        "disconnect",
        "disconnectAnalytics",
        "editProject",
        "enableCoolIdea",
        "boolean",
        "forceGreenFlag",
        "getConfig",
        "getProjects",
        "getRandomImageProjectName",
        "goPermissionSetting",
        "haveProjects",
        "init",
        "initCoolIdea",
        "coolIdea",
        "Lcom/everis/jibo/persistence/CoolIdea;",
        "initCoolIdeaAnalytics",
        "isCoolideaEnabled",
        "listen",
        "command",
        "Lcom/everis/jibo/beamaker/data/Command;",
        "listenCommandAnalytics",
        "loadProject",
        "logout",
        "logoutAnalytics",
        "lookAt",
        "lookAt3D",
        "lookAt3DCommandAnalytics",
        "lookAtCommandAnalytics",
        "onCoolIdeaResult",
        "onCreatingProjectError",
        "throwable",
        "",
        "onCreatingProjectSuccess",
        "onDeletingProjectError",
        "onDeletingProjectSucces",
        "onGettingLatestProjectError",
        "onGettingLatestProjectSuccess",
        "sortedProjects",
        "",
        "onJiboDisconnect",
        "code",
        "",
        "onJiboError",
        "transactionID",
        "errorMessage",
        "onJiboEvent",
        "event",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;",
        "onJiboEventError",
        "errorData",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;",
        "onJiboListen",
        "result",
        "onJiboParseError",
        "onJiboPhoto",
        "Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;",
        "inputStream",
        "Ljava/io/InputStream;",
        "onJiboSocketError",
        "onJiboSuccess",
        "onResult",
        "value",
        "onResume",
        "onUpdatingProjectError",
        "onUpdatingProjectSuccess",
        "registerGetEntity",
        "registerMotion",
        "registerScreenTouch",
        "registerTouchHead",
        "requestXMLProject",
        "saveProject",
        "projectName",
        "say",
        "text",
        "sayCommand",
        "sayCommandAnalytics",
        "sayTextAnalytics",
        "selectOperation",
        "setConfig",
        "stopAllBlocks",
        "stopAllSound",
        "takePhoto",
        "takePhotoCommandAnalytics",
        "update",
        "updateProject",
        "app_proRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field private executingFromXML:Z

.field private fromInit:Z

.field private fromSaveButton:Z

.field private final gson:Lcom/google/gson/Gson;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private initialProject:Z

.field private isCoolIdeaEnabled:Z

.field private mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mBlockID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCancelBlockID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCancelTransactionID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCoolIdeaProject:Lcom/everis/jibo/persistence/Project;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mCreatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mDeletingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mEntityTransactionID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mGettingProjectsUseCase:Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mHeadTouchTransactionID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mListenBlockID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mListenTransactionID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPermission:Z

.field private mPhotoBlockID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPhotoTransactionID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mProject:Lcom/everis/jibo/persistence/Project;

.field private mRegisterMotionTransactionID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mScreenGestureTransactionID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSetConfigBlockID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSetConfigTransactionID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSortedProjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/everis/jibo/persistence/Project;",
            ">;"
        }
    .end annotation
.end field

.field private mTransactionID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mUpdatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private open:Z


# direct methods
.method public constructor <init>(Lcom/everis/jibo/beamaker/ui/view/ScratchView;Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;)V
    .locals 3
    .param p1, "mView"    # Lcom/everis/jibo/beamaker/ui/view/ScratchView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "mGettingProjectsUseCase"    # Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "mCreatingProjectUseCase"    # Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "mUpdatingProjectUseCase"    # Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "mDeletingProjectUseCase"    # Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "mView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mGettingProjectsUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mCreatingProjectUseCase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mUpdatingProjectUseCase"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mDeletingProjectUseCase"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    iput-object p2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mGettingProjectsUseCase:Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;

    iput-object p3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mCreatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;

    iput-object p4, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mUpdatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;

    iput-object p5, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mDeletingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSortedProjects:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->gson:Lcom/google/gson/Gson;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->fromInit:Z

    .line 114
    new-instance v1, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->getScrach()Landroid/webkit/WebView;

    move-result-object v2

    move-object v0, p0

    check-cast v0, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;

    invoke-direct {v1, v2, v0}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascriptImpl;-><init>(Landroid/webkit/WebView;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V

    move-object v0, v1

    check-cast v0, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    .line 116
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mGettingProjectsUseCase:Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;

    move-object v0, p0

    check-cast v0, Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase$GettingLatestProjectCallback;

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;->setMCallback(Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase$GettingLatestProjectCallback;)V

    .line 117
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mCreatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;

    move-object v0, p0

    check-cast v0, Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase$CreatingProjectCallback;

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;->setMCallback(Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase$CreatingProjectCallback;)V

    .line 118
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mUpdatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;

    move-object v0, p0

    check-cast v0, Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase$UpdatingProjectCallback;

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;->setMCallback(Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase$UpdatingProjectCallback;)V

    .line 119
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mDeletingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;

    check-cast p0, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;
    invoke-virtual {v0, p0}, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;->setMCallback(Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase$DeletingProjectCallback;)V

    return-void
.end method

.method public static final synthetic access$getMProject$p(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;)Lcom/everis/jibo/persistence/Project;
    .locals 1
    .param p0, "$this"    # Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mProject:Lcom/everis/jibo/persistence/Project;

    return-object v0
.end method

.method public static final synthetic access$setMProject$p(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;Lcom/everis/jibo/persistence/Project;)V
    .locals 0
    .param p0, "$this"    # Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;
    .param p1, "<set-?>"    # Lcom/everis/jibo/persistence/Project;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mProject:Lcom/everis/jibo/persistence/Project;

    return-void
.end method

.method private final getProjects()V
    .locals 2

    .prologue
    .line 130
    new-instance v1, Ljava/lang/Thread;

    new-instance v0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$getProjects$1;

    invoke-direct {v0, p0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$getProjects$1;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 133
    return-void
.end method

.method private final getRandomImageProjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/everis/jibo/beamaker/utils/project/GetProjectImage;->INSTANCE:Lcom/everis/jibo/beamaker/utils/project/GetProjectImage;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/utils/project/GetProjectImage;->getImage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeProyect(Z)V
    .locals 12
    .param p1, "fromCoolIdea"    # Z

    .prologue
    const/16 v10, 0x3f

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 327
    if-eqz p1, :cond_3

    .line 329
    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->haveProjects()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->currentProjectDeleted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mProject:Lcom/everis/jibo/persistence/Project;

    if-eqz v0, :cond_1

    move-wide v4, v1

    move-wide v6, v1

    move-object v8, v3

    move-object v9, v3

    move-object v11, v3

    invoke-static/range {v0 .. v11}, Lcom/everis/jibo/persistence/Project;->copy$default(Lcom/everis/jibo/persistence/Project;JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/everis/jibo/persistence/Project;

    move-result-object v3

    :cond_1
    iput-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mCoolIdeaProject:Lcom/everis/jibo/persistence/Project;

    .line 339
    :cond_2
    :goto_0
    return-void

    .line 334
    :cond_3
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mCoolIdeaProject:Lcom/everis/jibo/persistence/Project;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/everis/jibo/persistence/Project;->getXmlString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_7

    :cond_4
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->haveProjects()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->currentProjectDeleted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 335
    :cond_5
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mCoolIdeaProject:Lcom/everis/jibo/persistence/Project;

    if-eqz v0, :cond_8

    move-wide v4, v1

    move-wide v6, v1

    move-object v8, v3

    move-object v9, v3

    move-object v11, v3

    invoke-static/range {v0 .. v11}, Lcom/everis/jibo/persistence/Project;->copy$default(Lcom/everis/jibo/persistence/Project;JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/everis/jibo/persistence/Project;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mProject:Lcom/everis/jibo/persistence/Project;

    .line 336
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mProject:Lcom/everis/jibo/persistence/Project;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/everis/jibo/persistence/Project;->getXmlString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object v1, v0

    :goto_4
    move-object v0, p0

    check-cast v0, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;

    invoke-interface {v2, v1, v0}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->fromXml(Ljava/lang/String;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V

    .line 337
    check-cast v3, Lcom/everis/jibo/persistence/Project;

    iput-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mCoolIdeaProject:Lcom/everis/jibo/persistence/Project;

    goto :goto_0

    :cond_6
    move-object v0, v3

    .line 334
    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    move-object v0, v3

    .line 335
    goto :goto_3

    .line 336
    :cond_9
    const-string v0, ""

    move-object v1, v0

    goto :goto_4
.end method

.method public checkPermission(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/karumi/dexter/Dexter;->withActivity(Landroid/app/Activity;)Lcom/karumi/dexter/DexterBuilder$Permission;

    move-result-object v0

    .line 859
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Lcom/karumi/dexter/DexterBuilder$Permission;->withPermission(Ljava/lang/String;)Lcom/karumi/dexter/DexterBuilder$SinglePermissionListener;

    move-result-object v1

    .line 860
    new-instance v0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1;

    invoke-direct {v0, p0, p1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$checkPermission$1;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;Landroid/graphics/Bitmap;)V

    check-cast v0, Lcom/karumi/dexter/listener/single/PermissionListener;

    invoke-interface {v1, v0}, Lcom/karumi/dexter/DexterBuilder$SinglePermissionListener;->withListener(Lcom/karumi/dexter/listener/single/PermissionListener;)Lcom/karumi/dexter/DexterBuilder;

    move-result-object v0

    .line 895
    invoke-interface {v0}, Lcom/karumi/dexter/DexterBuilder;->check()V

    .line 896
    return-void
.end method

.method public clearProject(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->clearAll()V

    .line 509
    return-void
.end method

.method public coolIdeasLayout()V
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->open:Z

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->openCoolIdeas()V

    .line 320
    :goto_0
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->open:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->open:Z

    .line 323
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->closeCoolIdeas()V

    goto :goto_0

    .line 320
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public createInitialProject(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "json"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->initialProject:Z

    .line 147
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    if-nez v1, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f0e0028

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "defaultNameProject":Ljava/lang/String;
    const-string v1, "defaultNameProject"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->saveProject(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public createList(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 552
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->createList(Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method public createVar(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 548
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->createVariable(Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method public currentProjectDeleted()Z
    .locals 8

    .prologue
    .line 137
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mProject:Lcom/everis/jibo/persistence/Project;

    .line 138
    .local v0, "it":Lcom/everis/jibo/persistence/Project;
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSortedProjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/everis/jibo/persistence/Project;

    .line 139
    .local v1, "project":Lcom/everis/jibo/persistence/Project;
    invoke-virtual {v1}, Lcom/everis/jibo/persistence/Project;->getId()J

    move-result-wide v4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/everis/jibo/persistence/Project;->getId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 140
    const/4 v2, 0x0

    .line 142
    .end local v1    # "project":Lcom/everis/jibo/persistence/Project;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public deleteProject(Lcom/everis/jibo/beamaker/data/ProjectEntity;)V
    .locals 2
    .param p1, "project"    # Lcom/everis/jibo/beamaker/data/ProjectEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "project"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mDeletingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;

    sget-object v1, Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;->INSTANCE:Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;

    invoke-virtual {v1, p1}, Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;->fromParcelableProject(Lcom/everis/jibo/beamaker/data/ProjectEntity;)Lcom/everis/jibo/persistence/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;->setMProject(Lcom/everis/jibo/persistence/Project;)V

    .line 189
    new-instance v1, Ljava/lang/Thread;

    new-instance v0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$deleteProject$1;

    invoke-direct {v0, p0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$deleteProject$1;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 191
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 192
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    check-cast p0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;
    invoke-virtual {v0, p0}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->jiboUnpair(Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;)V

    .line 300
    return-void
.end method

.method public disconnectAnalytics()V
    .locals 4

    .prologue
    .line 293
    new-instance v0, Lcom/segment/analytics/Properties;

    invoke-direct {v0}, Lcom/segment/analytics/Properties;-><init>()V

    .local v0, "p":Lcom/segment/analytics/Properties;
    move-object v1, v0

    .line 294
    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMUnpaired:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMUnpaired:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMUnpaired:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getTrack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->track(Landroid/content/Context;Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 296
    return-void
.end method

.method public editProject()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mProject:Lcom/everis/jibo/persistence/Project;

    if-eqz v0, :cond_0

    .line 287
    .local v0, "it":Lcom/everis/jibo/persistence/Project;
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v1, v0}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->openEditProjectDialog(Lcom/everis/jibo/persistence/Project;)V

    .line 288
    nop

    .line 289
    .end local v0    # "it":Lcom/everis/jibo/persistence/Project;
    :cond_0
    return-void
.end method

.method public enableCoolIdea(Z)V
    .locals 0
    .param p1, "boolean"    # Z

    .prologue
    .line 531
    iput-boolean p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->isCoolIdeaEnabled:Z

    .line 532
    return-void
.end method

.method public forceGreenFlag()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->greenFlag()V

    .line 517
    return-void
.end method

.method public getConfig()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public final getGson()Lcom/google/gson/Gson;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public final getMBamJavascriptEvaluate()Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    return-object v0
.end method

.method public final getMBlockID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBlockID:Ljava/lang/String;

    return-object v0
.end method

.method public final getMCancelBlockID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mCancelBlockID:Ljava/lang/String;

    return-object v0
.end method

.method public final getMCancelTransactionID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mCancelTransactionID:Ljava/lang/String;

    return-object v0
.end method

.method public final getMCoolIdeaProject()Lcom/everis/jibo/persistence/Project;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mCoolIdeaProject:Lcom/everis/jibo/persistence/Project;

    return-object v0
.end method

.method public final getMCreatingProjectUseCase()Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mCreatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;

    return-object v0
.end method

.method public final getMDeletingProjectUseCase()Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mDeletingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/DeletingProjectUseCase;

    return-object v0
.end method

.method public final getMEntityTransactionID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mEntityTransactionID:Ljava/lang/String;

    return-object v0
.end method

.method public final getMGettingProjectsUseCase()Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mGettingProjectsUseCase:Lcom/everis/jibo/beamaker/usecase/GettingLatestProjectUseCase;

    return-object v0
.end method

.method public final getMHeadTouchTransactionID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mHeadTouchTransactionID:Ljava/lang/String;

    return-object v0
.end method

.method public final getMListenBlockID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mListenBlockID:Ljava/lang/String;

    return-object v0
.end method

.method public final getMListenTransactionID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mListenTransactionID:Ljava/lang/String;

    return-object v0
.end method

.method public final getMPermission()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mPermission:Z

    return v0
.end method

.method public final getMPhotoBlockID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mPhotoBlockID:Ljava/lang/String;

    return-object v0
.end method

.method public final getMPhotoTransactionID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mPhotoTransactionID:Ljava/lang/String;

    return-object v0
.end method

.method public final getMRegisterMotionTransactionID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mRegisterMotionTransactionID:Ljava/lang/String;

    return-object v0
.end method

.method public final getMScreenGestureTransactionID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mScreenGestureTransactionID:Ljava/lang/String;

    return-object v0
.end method

.method public final getMSetConfigBlockID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSetConfigBlockID:Ljava/lang/String;

    return-object v0
.end method

.method public final getMSetConfigTransactionID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSetConfigTransactionID:Ljava/lang/String;

    return-object v0
.end method

.method public final getMTransactionID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mTransactionID:Ljava/lang/String;

    return-object v0
.end method

.method public final getMUpdatingProjectUseCase()Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mUpdatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;

    return-object v0
.end method

.method public final getMView()Lcom/everis/jibo/beamaker/ui/view/ScratchView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    return-object v0
.end method

.method public final getOpen()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->open:Z

    return v0
.end method

.method public goPermissionSetting()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 900
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v4, "package"

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/base/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v4, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 901
    .local v0, "myAppSettings":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 902
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 903
    :cond_0
    return-void

    .end local v0    # "myAppSettings":Landroid/content/Intent;
    :cond_1
    move-object v1, v2

    .line 900
    goto :goto_0
.end method

.method public haveProjects()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSortedProjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->fromInit:Z

    .line 103
    new-instance v1, Ljava/lang/Thread;

    new-instance v0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$init$1;

    invoke-direct {v0, p0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$init$1;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 105
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 108
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->initScreen()V

    .line 109
    return-void
.end method

.method public initCoolIdea(Lcom/everis/jibo/persistence/CoolIdea;)V
    .locals 2
    .param p1, "coolIdea"    # Lcom/everis/jibo/persistence/CoolIdea;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "coolIdea"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    invoke-virtual {p1}, Lcom/everis/jibo/persistence/CoolIdea;->getCommandXML()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;
    invoke-interface {v0, v1, p0}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->fromCoolIdeaXml(Ljava/lang/String;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V

    .line 521
    return-void
.end method

.method public initCoolIdeaAnalytics(Lcom/everis/jibo/persistence/CoolIdea;)V
    .locals 5
    .param p1, "coolIdea"    # Lcom/everis/jibo/persistence/CoolIdea;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "coolIdea"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    new-instance v0, Lcom/segment/analytics/Properties;

    invoke-direct {v0}, Lcom/segment/analytics/Properties;-><init>()V

    .local v0, "p":Lcom/segment/analytics/Properties;
    move-object v1, v0

    .line 525
    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMcool:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMcool:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 526
    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/BAMReplace;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/BAMReplace;

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMcool:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/everis/jibo/persistence/CoolIdea;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMReplace;->replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMcool:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueAction()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMcool:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getTrack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->track(Landroid/content/Context;Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 528
    return-void
.end method

.method public isCoolideaEnabled()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->isCoolIdeaEnabled:Z

    return v0
.end method

.method public listen(Lcom/everis/jibo/beamaker/data/Command;)V
    .locals 3
    .param p1, "command"    # Lcom/everis/jibo/beamaker/data/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->setListen()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mListenTransactionID:Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mListenTransactionID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/Command;->getBlockId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mListenBlockID:Ljava/lang/String;

    .line 426
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mListenTransactionID:Ljava/lang/String;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mListenBlockID:Ljava/lang/String;

    if-eqz v1, :cond_2

    :goto_1
    invoke-interface {v2, v0, v1}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->transactionCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_0
    return-void

    .line 426
    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method public listenCommandAnalytics()V
    .locals 4

    .prologue
    .line 945
    new-instance v0, Lcom/segment/analytics/Properties;

    invoke-direct {v0}, Lcom/segment/analytics/Properties;-><init>()V

    .local v0, "p":Lcom/segment/analytics/Properties;
    move-object v1, v0

    .line 946
    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMListenCommand:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMListenCommand:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMListenCommand:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getTrack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->track(Landroid/content/Context;Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 948
    return-void
.end method

.method public loadProject(Lcom/everis/jibo/persistence/Project;Z)V
    .locals 4
    .param p1, "project"    # Lcom/everis/jibo/persistence/Project;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "fromInit"    # Z

    .prologue
    const/4 v2, 0x1

    const-string v0, "project"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mProject:Lcom/everis/jibo/persistence/Project;

    .line 153
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->clearAll()V

    .line 154
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mProject:Lcom/everis/jibo/persistence/Project;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/everis/jibo/persistence/Project;->getProjectName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_0
    invoke-interface {v1, v0}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->showNameProject(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->enableToolbarButtons()V

    .line 157
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mProject:Lcom/everis/jibo/persistence/Project;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/everis/jibo/persistence/Project;->getXmlString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    move v0, v2

    :goto_2
    if-nez v0, :cond_2

    .line 159
    if-eqz p2, :cond_1

    .line 160
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/base/BaseActivity;->showLoading()V

    .line 163
    :cond_1
    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mProject:Lcom/everis/jibo/persistence/Project;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/everis/jibo/persistence/Project;->getXmlString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object v1, v0

    :goto_3
    move-object v0, p0

    check-cast v0, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;

    invoke-interface {v3, v1, v0}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->fromXml(Ljava/lang/String;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V

    .line 164
    iput-boolean v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->executingFromXML:Z

    .line 166
    :cond_2
    return-void

    .line 154
    :cond_3
    const-string v0, ""

    goto :goto_0

    .line 157
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 163
    :cond_6
    const-string v0, ""

    move-object v1, v0

    goto :goto_3
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->jiboLogout()V

    .line 304
    return-void
.end method

.method public logoutAnalytics()V
    .locals 4

    .prologue
    .line 308
    new-instance v0, Lcom/segment/analytics/Properties;

    invoke-direct {v0}, Lcom/segment/analytics/Properties;-><init>()V

    .local v0, "p":Lcom/segment/analytics/Properties;
    move-object v1, v0

    .line 309
    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMLogout:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMLogout:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMLogout:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getTrack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->track(Landroid/content/Context;Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 311
    return-void
.end method

.method public lookAt(Lcom/everis/jibo/beamaker/data/Command;)V
    .locals 7
    .param p1, "command"    # Lcom/everis/jibo/beamaker/data/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "command"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/Command;->getArgs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 403
    .local v0, "it":Ljava/util/List;
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/Command;->getArgs()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 404
    .local v2, "theta":Ljava/lang/Float;
    :goto_0
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/Command;->getArgs()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 407
    .local v1, "psi":Ljava/lang/Float;
    :goto_1
    sget-object v6, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move v4, v3

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_3
    invoke-virtual {v6, v4, v3}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->setTurn(FF)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mTransactionID:Ljava/lang/String;

    .line 409
    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mTransactionID:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 412
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/Command;->getBlockId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBlockID:Ljava/lang/String;

    .line 413
    iget-object v5, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mTransactionID:Ljava/lang/String;

    if-eqz v3, :cond_6

    :goto_4
    iget-object v4, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBlockID:Ljava/lang/String;

    if-eqz v4, :cond_7

    :goto_5
    invoke-interface {v5, v3, v4}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->transactionCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_0
    nop

    nop

    .line 416
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "psi":Ljava/lang/Float;
    .end local v2    # "theta":Ljava/lang/Float;
    :cond_1
    return-void

    .restart local v0    # "it":Ljava/util/List;
    :cond_2
    move-object v2, v4

    .line 403
    goto :goto_0

    .restart local v2    # "theta":Ljava/lang/Float;
    :cond_3
    move-object v1, v4

    .line 404
    goto :goto_1

    .restart local v1    # "psi":Ljava/lang/Float;
    :cond_4
    move v4, v5

    .line 407
    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_3

    .line 413
    :cond_6
    const-string v3, ""

    goto :goto_4

    :cond_7
    const-string v4, ""

    goto :goto_5
.end method

.method public lookAt3D(Lcom/everis/jibo/beamaker/data/Command;)V
    .locals 8
    .param p1, "command"    # Lcom/everis/jibo/beamaker/data/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v3, "command"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/Command;->getArgs()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/Command;->getArgs()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_1

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x3

    if-ge v3, v6, :cond_3

    .line 397
    :cond_2
    :goto_1
    return-void

    .line 384
    :cond_3
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/Command;->getArgs()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 385
    .local v0, "x":Ljava/lang/Float;
    :goto_2
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/Command;->getArgs()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 386
    .local v1, "y":Ljava/lang/Float;
    :goto_3
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/Command;->getArgs()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 389
    .local v2, "z":Ljava/lang/Float;
    :goto_4
    sget-object v7, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move v6, v3

    :goto_5
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move v4, v3

    :goto_6
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_7
    invoke-virtual {v7, v6, v4, v3}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->setLookAt3D(FFF)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mTransactionID:Ljava/lang/String;

    .line 391
    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mTransactionID:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 394
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/Command;->getBlockId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBlockID:Ljava/lang/String;

    .line 395
    iget-object v5, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mTransactionID:Ljava/lang/String;

    if-eqz v3, :cond_a

    :goto_8
    iget-object v4, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBlockID:Ljava/lang/String;

    if-eqz v4, :cond_b

    :goto_9
    invoke-interface {v5, v3, v4}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->transactionCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "x":Ljava/lang/Float;
    .end local v1    # "y":Ljava/lang/Float;
    .end local v2    # "z":Ljava/lang/Float;
    :cond_4
    move-object v0, v4

    .line 384
    goto :goto_2

    .restart local v0    # "x":Ljava/lang/Float;
    :cond_5
    move-object v1, v4

    .line 385
    goto :goto_3

    .restart local v1    # "y":Ljava/lang/Float;
    :cond_6
    move-object v2, v4

    .line 386
    goto :goto_4

    .restart local v2    # "z":Ljava/lang/Float;
    :cond_7
    move v6, v5

    .line 389
    goto :goto_5

    :cond_8
    move v4, v5

    goto :goto_6

    :cond_9
    move v3, v5

    goto :goto_7

    .line 395
    :cond_a
    const-string v3, ""

    goto :goto_8

    :cond_b
    const-string v4, ""

    goto :goto_9
.end method

.method public lookAt3DCommandAnalytics()V
    .locals 4

    .prologue
    .line 933
    new-instance v0, Lcom/segment/analytics/Properties;

    invoke-direct {v0}, Lcom/segment/analytics/Properties;-><init>()V

    .local v0, "p":Lcom/segment/analytics/Properties;
    move-object v1, v0

    .line 934
    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMLookAtCommand:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMLookAtCommand:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMLookAtCommand:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getTrack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->track(Landroid/content/Context;Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 936
    return-void
.end method

.method public lookAtCommandAnalytics()V
    .locals 4

    .prologue
    .line 939
    new-instance v0, Lcom/segment/analytics/Properties;

    invoke-direct {v0}, Lcom/segment/analytics/Properties;-><init>()V

    .local v0, "p":Lcom/segment/analytics/Properties;
    move-object v1, v0

    .line 940
    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMLookAtCommand:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMLookAtCommand:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMLookAtCommand:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getTrack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->track(Landroid/content/Context;Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 942
    return-void
.end method

.method public onCoolIdeaResult()V
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->greenFlag()V

    .line 833
    return-void
.end method

.method public onCreatingProjectError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public onCreatingProjectSuccess(Lcom/everis/jibo/persistence/Project;)V
    .locals 3
    .param p1, "project"    # Lcom/everis/jibo/persistence/Project;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const-string v0, "project"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mProject:Lcom/everis/jibo/persistence/Project;

    .line 237
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSortedProjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->enableToolbarButtons()V

    .line 240
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-virtual {p1}, Lcom/everis/jibo/persistence/Project;->getProjectName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->showNameProject(Ljava/lang/String;)V

    .line 241
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->initialProject:Z

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->clearAll()V

    .line 244
    :cond_0
    iput-boolean v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->initialProject:Z

    .line 245
    return-void
.end method

.method public onDeletingProjectError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public onDeletingProjectSucces()V
    .locals 2

    .prologue
    .line 271
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 272
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onDeletingProjectSucces$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onDeletingProjectSucces$1;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->getProjects()V

    .line 280
    return-void
.end method

.method public onGettingLatestProjectError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public onGettingLatestProjectSuccess(Ljava/util/List;)V
    .locals 4
    .param p1, "sortedProjects"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/everis/jibo/persistence/Project;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v0, "sortedProjects"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSortedProjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 214
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSortedProjects:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    .end local p1    # "sortedProjects":Ljava/util/List;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 216
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->fromInit:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSortedProjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSortedProjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "mSortedProjects[0]"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/everis/jibo/persistence/Project;

    invoke-interface {v1, v0}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->showLoadSavedProjectDialog(Lcom/everis/jibo/persistence/Project;)V

    .line 225
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->fromInit:Z

    .line 228
    return-void

    .line 219
    :cond_1
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->fromInit:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSortedProjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->fromInit:Z

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSortedProjects:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mProject:Lcom/everis/jibo/persistence/Project;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->clearAll()V

    .line 223
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->disableToolbarButtons()V

    .line 224
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->showNameProject(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onJiboDisconnect(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 798
    sget-object v0, Lcom/everis/jibo/beamaker/utils/BAMLogger;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJiboDisconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/utils/BAMLogger;->showDevLog(Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v0, p1}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->disconnect(I)V

    .line 800
    return-void
.end method

.method public onJiboError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "errorMessage"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 641
    return-void
.end method

.method public onJiboEvent(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;)V
    .locals 7
    .param p1, "transactionID"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "event"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 650
    .line 652
    iget-object v5, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSetConfigTransactionID:Ljava/lang/String;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 655
    iget-object v4, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSetConfigBlockID:Ljava/lang/String;

    if-eqz v3, :cond_1

    :goto_0
    invoke-interface {v4, v3}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->eventHandler(Ljava/lang/String;)V

    .line 658
    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSetConfigBlockID:Ljava/lang/String;

    .line 790
    .end local p2    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    :cond_0
    :goto_1
    return-void

    .line 655
    .restart local p2    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    :cond_1
    const-string v3, ""

    goto :goto_0

    .line 661
    :cond_2
    iget-object v5, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mListenTransactionID:Ljava/lang/String;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 663
    instance-of v2, p2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenEvent;

    if-eqz v2, :cond_0

    .line 666
    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;

    check-cast p2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenEvent;

    .end local p2    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    invoke-virtual {v2, p2}, Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;->getListenJson(Lcom/jibo/apptoolkit/protocol/model/EventMessage$ListenEvent;)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onJiboEvent$1;

    invoke-direct {v2, p0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onJiboEvent$1;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;)V

    check-cast v2, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;

    invoke-interface {v3, v4, v2}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->eventCallback(Ljava/lang/String;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V

    goto :goto_1

    .line 683
    .restart local p2    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    :cond_3
    iget-object v5, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mTransactionID:Ljava/lang/String;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 686
    iget-object v4, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBlockID:Ljava/lang/String;

    if-eqz v3, :cond_4

    :goto_2
    invoke-interface {v4, v3}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->eventHandler(Ljava/lang/String;)V

    .line 689
    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBlockID:Ljava/lang/String;

    goto :goto_1

    .line 686
    :cond_4
    const-string v3, ""

    goto :goto_2

    .line 692
    :cond_5
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mScreenGestureTransactionID:Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 694
    instance-of v2, p2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$TapEvent;

    if-eqz v2, :cond_6

    .line 696
    new-instance v1, Lcom/segment/analytics/Properties;

    invoke-direct {v1}, Lcom/segment/analytics/Properties;-><init>()V

    .local v1, "p":Lcom/segment/analytics/Properties;
    move-object v2, v1

    .line 697
    check-cast v2, Ljava/util/Map;

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMScreenTouchEvent:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMScreenTouchEvent:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v4}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 698
    check-cast v2, Ljava/util/Map;

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMScreenTouchEvent:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyAction()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/everis/jibo/beamaker/utils/analitycs/BAMReplace;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/BAMReplace;

    sget-object v5, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMScreenTouchEvent:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v5}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Tap"

    invoke-virtual {v4, v5, v6}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMReplace;->replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v2}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    sget-object v4, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMScreenTouchEvent:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v4}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getTrack()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v1}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->track(Landroid/content/Context;Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 701
    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;

    check-cast p2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$TapEvent;

    .end local p2    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    invoke-virtual {v2, p2}, Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;->getTapJson(Lcom/jibo/apptoolkit/protocol/model/EventMessage$TapEvent;)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onJiboEvent$2;

    invoke-direct {v2, p0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onJiboEvent$2;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;)V

    check-cast v2, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;

    invoke-interface {v3, v4, v2}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->eventCallback(Ljava/lang/String;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V

    goto/16 :goto_1

    .line 711
    .end local v1    # "p":Lcom/segment/analytics/Properties;
    .restart local p2    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    :cond_6
    instance-of v2, p2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$SwipeEvent;

    if-eqz v2, :cond_0

    .line 713
    new-instance v1, Lcom/segment/analytics/Properties;

    invoke-direct {v1}, Lcom/segment/analytics/Properties;-><init>()V

    .restart local v1    # "p":Lcom/segment/analytics/Properties;
    move-object v2, v1

    .line 714
    check-cast v2, Ljava/util/Map;

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMScreenTouchEvent:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMScreenTouchEvent:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v4}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 715
    check-cast v2, Ljava/util/Map;

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMScreenTouchEvent:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyAction()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/everis/jibo/beamaker/utils/analitycs/BAMReplace;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/BAMReplace;

    sget-object v5, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMScreenTouchEvent:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v5}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Swipe"

    invoke-virtual {v4, v5, v6}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMReplace;->replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v2}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    sget-object v4, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMScreenTouchEvent:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v4}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getTrack()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v1}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->track(Landroid/content/Context;Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 718
    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;

    check-cast p2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$SwipeEvent;

    .end local p2    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    invoke-virtual {v2, p2}, Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;->getSwipeJson(Lcom/jibo/apptoolkit/protocol/model/EventMessage$SwipeEvent;)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onJiboEvent$3;

    invoke-direct {v2, p0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onJiboEvent$3;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;)V

    check-cast v2, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;

    invoke-interface {v3, v4, v2}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->eventCallback(Ljava/lang/String;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V

    goto/16 :goto_1

    .line 730
    .end local v1    # "p":Lcom/segment/analytics/Properties;
    .restart local p2    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    :cond_7
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mHeadTouchTransactionID:Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 733
    instance-of v2, p2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent;

    if-eqz v2, :cond_0

    .line 735
    new-instance v1, Lcom/segment/analytics/Properties;

    invoke-direct {v1}, Lcom/segment/analytics/Properties;-><init>()V

    .restart local v1    # "p":Lcom/segment/analytics/Properties;
    move-object v2, v1

    .line 736
    check-cast v2, Ljava/util/Map;

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMHeadTouchEvent:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMHeadTouchEvent:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v4}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v2}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    sget-object v4, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMHeadTouchEvent:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v4}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getTrack()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v1}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->track(Landroid/content/Context;Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 739
    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;

    check-cast p2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent;

    .end local p2    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    invoke-virtual {v2, p2}, Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;->getHeadTouchJson(Lcom/jibo/apptoolkit/protocol/model/EventMessage$HeadTouchEvent;)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onJiboEvent$4;

    invoke-direct {v2, p0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onJiboEvent$4;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;)V

    check-cast v2, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;

    invoke-interface {v3, v4, v2}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->eventCallback(Ljava/lang/String;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V

    goto/16 :goto_1

    .line 751
    .end local v1    # "p":Lcom/segment/analytics/Properties;
    .restart local p2    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    :cond_8
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mRegisterMotionTransactionID:Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 753
    instance-of v2, p2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$MotionEvent;

    if-eqz v2, :cond_0

    .line 755
    sget-object v5, Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;

    move-object v2, p2

    check-cast v2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$MotionEvent;

    invoke-virtual {v5, v2}, Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;->getMotionJson(Lcom/jibo/apptoolkit/protocol/model/EventMessage$MotionEvent;)Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "json":Ljava/lang/String;
    check-cast v0, Ljava/lang/CharSequence;

    .end local v0    # "json":Ljava/lang/String;
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    :goto_3
    if-eqz v3, :cond_0

    .line 758
    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;

    check-cast p2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$MotionEvent;

    .end local p2    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    invoke-virtual {v2, p2}, Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;->getMotionJson(Lcom/jibo/apptoolkit/protocol/model/EventMessage$MotionEvent;)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onJiboEvent$5;

    invoke-direct {v2, p0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onJiboEvent$5;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;)V

    check-cast v2, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;

    invoke-interface {v3, v4, v2}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->eventCallback(Ljava/lang/String;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V

    goto/16 :goto_1

    .restart local p2    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    :cond_9
    move v3, v4

    .line 757
    goto :goto_3

    .line 771
    :cond_a
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mEntityTransactionID:Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 773
    instance-of v2, p2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;

    if-eqz v2, :cond_0

    .line 775
    sget-object v2, Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;

    check-cast p2, Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;

    .end local p2    # "event":Lcom/jibo/apptoolkit/protocol/model/EventMessage$BaseEvent;
    invoke-virtual {v2, p2}, Lcom/everis/jibo/beamaker/utils/BAMJsonMapper;->getEntityJson(Lcom/jibo/apptoolkit/protocol/model/EventMessage$EntityTrackEvent;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "json":Ljava/lang/String;
    move-object v2, v0

    .line 777
    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v3

    :goto_4
    if-eqz v2, :cond_0

    .line 778
    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    new-instance v2, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onJiboEvent$6;

    invoke-direct {v2, p0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onJiboEvent$6;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;)V

    check-cast v2, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;

    invoke-interface {v3, v0, v2}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->eventCallback(Ljava/lang/String;Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V

    goto/16 :goto_1

    :cond_b
    move v2, v4

    .line 777
    goto :goto_4
.end method

.method public onJiboEventError(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;)V
    .locals 3
    .param p1, "transactionID"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "errorData"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 794
    sget-object v1, Lcom/everis/jibo/beamaker/utils/BAMLogger;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJiboEventError: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/jibo/apptoolkit/protocol/model/EventMessage$ErrorEvent$ErrorData;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/utils/BAMLogger;->showDevLog(Ljava/lang/String;)V

    .line 795
    return-void

    .line 794
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onJiboListen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "result"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 803
    return-void
.end method

.method public onJiboParseError()V
    .locals 2

    .prologue
    .line 586
    sget-object v0, Lcom/everis/jibo/beamaker/utils/BAMLogger;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMLogger;

    const-string v1, "onJiboParseError"

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/utils/BAMLogger;->showDevLog(Ljava/lang/String;)V

    .line 587
    return-void
.end method

.method public onJiboPhoto(Ljava/lang/String;Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;Ljava/io/InputStream;)V
    .locals 6
    .param p1, "transactionID"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "event"    # Lcom/jibo/apptoolkit/protocol/model/EventMessage$TakePhotoEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "inputStream"    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const-string v2, "inputStream"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mPhotoTransactionID:Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    iget-object v4, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mPhotoBlockID:Ljava/lang/String;

    if-eqz v2, :cond_1

    :goto_0
    invoke-interface {v4, v2}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->eventHandler(Ljava/lang/String;)V

    move-object v2, v3

    .line 597
    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mPhotoTransactionID:Ljava/lang/String;

    .line 598
    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mPhotoBlockID:Ljava/lang/String;

    .line 601
    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v2, "BitmapFactory.decodeStream(inputStream)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 603
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-boolean v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mPermission:Z

    if-eqz v2, :cond_2

    .line 606
    sget-object v2, Lcom/everis/jibo/beamaker/utils/files/FileUtil;->INSTANCE:Lcom/everis/jibo/beamaker/utils/files/FileUtil;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, "Environment.getExternalS\u2026nment.DIRECTORY_PICTURES)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Lcom/everis/jibo/beamaker/utils/files/FileUtil;->save(Landroid/graphics/Bitmap;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 608
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 611
    sget-object v3, Lcom/everis/jibo/beamaker/utils/files/ImageGallery;->INSTANCE:Lcom/everis/jibo/beamaker/utils/files/ImageGallery;

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "MediaStore.Images.Media.EXTERNAL_CONTENT_URI"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v2, "file.absolutePath"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v2}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v3, v4, v5, v2}, Lcom/everis/jibo/beamaker/utils/files/ImageGallery;->addImageToGallery(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    .line 614
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onJiboPhoto$1;

    invoke-direct {v2, p0, v1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onJiboPhoto$1;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;Ljava/io/File;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 622
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 596
    :cond_1
    const-string v2, ""

    goto :goto_0

    .line 621
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->checkPermission(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public onJiboSocketError()V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    sget-object v1, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->INSTANCE:Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;

    invoke-virtual {v1}, Lcom/everis/jibo/beamaker/utils/ErrorDialogCodes;->getSOCKET_ERROR()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->disconnect(I)V

    .line 645
    return-void
.end method

.method public onJiboSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "transactionID"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 629
    .line 631
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mCancelTransactionID:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mCancelBlockID:Ljava/lang/String;

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v2, v0}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->eventHandler(Ljava/lang/String;)V

    move-object v0, v1

    .line 634
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mCancelTransactionID:Ljava/lang/String;

    .line 635
    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mCancelBlockID:Ljava/lang/String;

    .line 637
    :cond_0
    return-void

    .line 633
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 123
    sget-object v1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    move-object v0, p0

    check-cast v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;

    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->initListener(Lcom/everis/jibo/beamaker/romcomander/RomCommanderData$OnJiboWrapper;)V

    .line 124
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->fromInit:Z

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->getProjects()V

    .line 127
    :cond_0
    return-void
.end method

.method public onUpdatingProjectError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public onUpdatingProjectSuccess(Lcom/everis/jibo/persistence/Project;)V
    .locals 2
    .param p1, "project"    # Lcom/everis/jibo/persistence/Project;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "project"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mProject:Lcom/everis/jibo/persistence/Project;

    .line 256
    iget-boolean v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->fromSaveButton:Z

    if-eqz v1, :cond_0

    .line 257
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 258
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onUpdatingProjectSuccess$1;

    invoke-direct {v1, p0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$onUpdatingProjectSuccess$1;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public registerGetEntity()V
    .locals 1

    .prologue
    .line 470
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->registerGetEntity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mEntityTransactionID:Ljava/lang/String;

    .line 471
    return-void
.end method

.method public registerMotion()V
    .locals 1

    .prologue
    .line 484
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->setMotion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mRegisterMotionTransactionID:Ljava/lang/String;

    .line 485
    return-void
.end method

.method public registerScreenTouch()V
    .locals 2

    .prologue
    .line 475
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;->SwipeDown:Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->screenGesture(Lcom/jibo/apptoolkit/protocol/model/Command$ScreenGestureRequest$ScreenGestureFilter$ScreenGestureType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mScreenGestureTransactionID:Ljava/lang/String;

    .line 476
    return-void
.end method

.method public registerTouchHead()V
    .locals 1

    .prologue
    .line 480
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->registerHeadTouch()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mHeadTouchTransactionID:Ljava/lang/String;

    .line 481
    return-void
.end method

.method public requestXMLProject()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    check-cast p0, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;

    .end local p0    # "this":Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;
    invoke-interface {v0, p0}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->toXML(Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript$EvaluateJavascriptCallback;)V

    .line 505
    return-void
.end method

.method public saveProject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "projectName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "json"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v4, "projectName"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "json"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const-string v5, "Calendar.getInstance()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 170
    .local v2, "currentTime":J
    invoke-direct {p0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->getRandomImageProjectName()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "defaultImage":Ljava/lang/String;
    iget-object v4, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->gson:Lcom/google/gson/Gson;

    const-class v5, Lcom/everis/jibo/beamaker/domain/CommandHandlerModel;

    invoke-virtual {v4, p2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/everis/jibo/beamaker/domain/CommandHandlerModel;

    .line 172
    .local v8, "commandHandlerModel":Lcom/everis/jibo/beamaker/domain/CommandHandlerModel;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/everis/jibo/beamaker/domain/CommandHandlerModel;->getCleanXML()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 174
    .local v7, "xml":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/everis/jibo/persistence/Project;

    move-wide v4, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/everis/jibo/persistence/Project;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v0, "project":Lcom/everis/jibo/persistence/Project;
    iget-object v4, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mCreatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;

    invoke-virtual {v4, v0}, Lcom/everis/jibo/beamaker/usecase/CreatingProjectUseCase;->setMProject(Lcom/everis/jibo/persistence/Project;)V

    .line 182
    new-instance v5, Ljava/lang/Thread;

    new-instance v4, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$saveProject$1;

    invoke-direct {v4, p0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$saveProject$1;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;)V

    check-cast v4, Ljava/lang/Runnable;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 184
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 185
    return-void

    .line 172
    .end local v0    # "project":Lcom/everis/jibo/persistence/Project;
    .end local v7    # "xml":Ljava/lang/String;
    :cond_0
    const-string v7, ""

    goto :goto_0
.end method

.method public say(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    invoke-virtual {v0, p1}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->say(Ljava/lang/String;)Ljava/lang/String;

    .line 361
    return-void
.end method

.method public sayCommand(Lcom/everis/jibo/beamaker/data/Command;)V
    .locals 3
    .param p1, "command"    # Lcom/everis/jibo/beamaker/data/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    sget-object v1, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/Command;->getArgs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->say(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mTransactionID:Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mTransactionID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/Command;->getBlockId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBlockID:Ljava/lang/String;

    .line 355
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mTransactionID:Ljava/lang/String;

    if-eqz v0, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBlockID:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_2
    invoke-interface {v2, v0, v1}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->transactionCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_0
    return-void

    .line 349
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 355
    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    const-string v1, ""

    goto :goto_2
.end method

.method public sayCommandAnalytics(Lcom/everis/jibo/beamaker/data/Command;)V
    .locals 7
    .param p1, "command"    # Lcom/everis/jibo/beamaker/data/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "command"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 914
    new-instance v0, Lcom/segment/analytics/Properties;

    invoke-direct {v0}, Lcom/segment/analytics/Properties;-><init>()V

    .local v0, "p":Lcom/segment/analytics/Properties;
    move-object v1, v0

    .line 915
    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMSayCommand1:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMSayCommand1:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 916
    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMSayCommand1:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyAction()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/everis/jibo/beamaker/utils/analitycs/BAMReplace;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/BAMReplace;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMSayCommand1:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/Command;->getArgs()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v4, v5, v2}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMReplace;->replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMSayCommand1:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getTrack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->track(Landroid/content/Context;Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 918
    return-void

    .line 916
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public sayTextAnalytics(Lcom/everis/jibo/beamaker/data/Command;)V
    .locals 4
    .param p1, "command"    # Lcom/everis/jibo/beamaker/data/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "command"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 921
    new-instance v0, Lcom/segment/analytics/Properties;

    invoke-direct {v0}, Lcom/segment/analytics/Properties;-><init>()V

    .local v0, "p":Lcom/segment/analytics/Properties;
    move-object v1, v0

    .line 922
    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMSayCommand:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMSayCommand:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMSayCommand:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getTrack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->track(Landroid/content/Context;Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 924
    return-void
.end method

.method public selectOperation(Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x2

    const-string v1, "json"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/everis/jibo/beamaker/data/ListVariable;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everis/jibo/beamaker/data/ListVariable;

    .line 540
    .local v0, "listVariable":Lcom/everis/jibo/beamaker/data/ListVariable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/data/ListVariable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "variable"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v5, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 541
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->openNewVariableListDialog(I)V

    .line 544
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v1, v5}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->openNewVariableListDialog(I)V

    goto :goto_0
.end method

.method public setConfig(Lcom/everis/jibo/beamaker/data/Command;)V
    .locals 6
    .param p1, "command"    # Lcom/everis/jibo/beamaker/data/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const-string v3, "command"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/Command;->getArgs()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/Command;->getArgs()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_1

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_3

    .line 450
    .end local p0    # "this":Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;
    :cond_2
    :goto_1
    return-void

    .line 441
    .restart local p0    # "this":Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;
    :cond_3
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/Command;->getArgs()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 443
    .local v2, "vol":Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    if-eqz v2, :cond_5

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    move-object v1, p0

    .end local p0    # "this":Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;
    .local v1, "this":Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;
    :goto_2
    invoke-virtual {v4, v3}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->setConfig(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSetConfigTransactionID:Ljava/lang/String;

    .line 444
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSetConfigTransactionID:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 447
    .local v0, "it":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/Command;->getBlockId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSetConfigBlockID:Ljava/lang/String;

    .line 448
    iget-object v5, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    iget-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSetConfigTransactionID:Ljava/lang/String;

    if-eqz v3, :cond_6

    :goto_3
    iget-object v4, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSetConfigBlockID:Ljava/lang/String;

    if-eqz v4, :cond_7

    :goto_4
    invoke-interface {v5, v3, v4}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->transactionCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    nop

    .line 444
    goto :goto_1

    .line 443
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "this":Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;
    .restart local p0    # "this":Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;
    :cond_5
    const/4 v3, 0x0

    move-object v1, p0

    .end local p0    # "this":Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;
    .restart local v1    # "this":Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;
    goto :goto_2

    .line 448
    .restart local v0    # "it":Ljava/lang/String;
    :cond_6
    const-string v3, ""

    goto :goto_3

    :cond_7
    const-string v4, ""

    goto :goto_4
.end method

.method public final setMBamJavascriptEvaluate(Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    return-void
.end method

.method public final setMBlockID(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 86
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBlockID:Ljava/lang/String;

    return-void
.end method

.method public final setMCancelBlockID(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 87
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mCancelBlockID:Ljava/lang/String;

    return-void
.end method

.method public final setMCancelTransactionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mCancelTransactionID:Ljava/lang/String;

    return-void
.end method

.method public final setMCoolIdeaProject(Lcom/everis/jibo/persistence/Project;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/everis/jibo/persistence/Project;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mCoolIdeaProject:Lcom/everis/jibo/persistence/Project;

    return-void
.end method

.method public final setMEntityTransactionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mEntityTransactionID:Ljava/lang/String;

    return-void
.end method

.method public final setMHeadTouchTransactionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 79
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mHeadTouchTransactionID:Ljava/lang/String;

    return-void
.end method

.method public final setMListenBlockID(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 88
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mListenBlockID:Ljava/lang/String;

    return-void
.end method

.method public final setMListenTransactionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mListenTransactionID:Ljava/lang/String;

    return-void
.end method

.method public final setMPermission(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mPermission:Z

    return-void
.end method

.method public final setMPhotoBlockID(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 90
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mPhotoBlockID:Ljava/lang/String;

    return-void
.end method

.method public final setMPhotoTransactionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 81
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mPhotoTransactionID:Ljava/lang/String;

    return-void
.end method

.method public final setMRegisterMotionTransactionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 80
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mRegisterMotionTransactionID:Ljava/lang/String;

    return-void
.end method

.method public final setMScreenGestureTransactionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mScreenGestureTransactionID:Ljava/lang/String;

    return-void
.end method

.method public final setMSetConfigBlockID(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 89
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSetConfigBlockID:Ljava/lang/String;

    return-void
.end method

.method public final setMSetConfigTransactionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mSetConfigTransactionID:Ljava/lang/String;

    return-void
.end method

.method public final setMTransactionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 77
    iput-object p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mTransactionID:Ljava/lang/String;

    return-void
.end method

.method public final setOpen(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->open:Z

    return-void
.end method

.method public stopAllBlocks()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    invoke-interface {v0}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->stopAll()V

    .line 513
    return-void
.end method

.method public stopAllSound(Lcom/everis/jibo/beamaker/data/Command;)V
    .locals 2
    .param p1, "command"    # Lcom/everis/jibo/beamaker/data/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$stopAllSound$1;

    invoke-direct {v0, p0, p1}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$stopAllSound$1;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;Lcom/everis/jibo/beamaker/data/Command;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 467
    return-void
.end method

.method public takePhoto(Lcom/everis/jibo/beamaker/data/Command;)V
    .locals 4
    .param p1, "command"    # Lcom/everis/jibo/beamaker/data/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    sget-object v0, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->INSTANCE:Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;

    sget-object v1, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$Camera;->Left:Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$Camera;

    .line 367
    sget-object v2, Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;->MedRes:Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;

    .line 368
    const/4 v3, 0x0

    .line 366
    invoke-virtual {v0, v1, v2, v3}, Lcom/everis/jibo/beamaker/romcomander/RomCommanderData;->setPhoto(Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$Camera;Lcom/jibo/apptoolkit/protocol/model/Command$TakePhotoRequest$CameraResolution;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mPhotoTransactionID:Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mPhotoTransactionID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p1}, Lcom/everis/jibo/beamaker/data/Command;->getBlockId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mPhotoBlockID:Ljava/lang/String;

    .line 374
    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mBamJavascriptEvaluate:Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;

    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mPhotoTransactionID:Ljava/lang/String;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mPhotoBlockID:Ljava/lang/String;

    if-eqz v1, :cond_2

    :goto_1
    invoke-interface {v2, v0, v1}, Lcom/everis/jibo/beamaker/communication/BAMEvalutateJavascript;->transactionCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_0
    return-void

    .line 374
    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method public takePhotoCommandAnalytics(Lcom/everis/jibo/beamaker/data/Command;)V
    .locals 4
    .param p1, "command"    # Lcom/everis/jibo/beamaker/data/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "command"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 927
    new-instance v0, Lcom/segment/analytics/Properties;

    invoke-direct {v0}, Lcom/segment/analytics/Properties;-><init>()V

    .local v0, "p":Lcom/segment/analytics/Properties;
    move-object v1, v0

    .line 928
    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMTakePhotoCommand:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v2}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamKeyType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMTakePhotoCommand:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getParamValueType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    sget-object v2, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->INSTANCE:Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mView:Lcom/everis/jibo/beamaker/ui/view/ScratchView;

    invoke-interface {v1}, Lcom/everis/jibo/beamaker/ui/view/ScratchView;->getBaseActivity()Lcom/everis/jibo/beamaker/base/BaseActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v3, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->BAMTakePhotoCommand:Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;

    invoke-virtual {v3}, Lcom/everis/jibo/beamaker/utils/analitycs/BAMTracks;->getTrack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/everis/jibo/beamaker/utils/analitycs/SegmentAnalytics;->track(Landroid/content/Context;Ljava/lang/String;Lcom/segment/analytics/Properties;)V

    .line 930
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 14
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v1, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    iput-boolean v13, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->fromSaveButton:Z

    .line 491
    iget-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->executingFromXML:Z

    if-nez v0, :cond_3

    .line 492
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->gson:Lcom/google/gson/Gson;

    const-class v4, Lcom/everis/jibo/beamaker/domain/CommandHandlerModel;

    invoke-virtual {v0, p1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/everis/jibo/beamaker/domain/CommandHandlerModel;

    .line 493
    .local v12, "commandHandlerModel":Lcom/everis/jibo/beamaker/domain/CommandHandlerModel;
    sget-object v0, Lcom/everis/jibo/beamaker/utils/BAMLogger;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AFTER UPDATE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mProject:Lcom/everis/jibo/persistence/Project;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/everis/jibo/beamaker/utils/BAMLogger;->showDevLog(Ljava/lang/String;)V

    .line 494
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lcom/everis/jibo/beamaker/domain/CommandHandlerModel;->getCleanXML()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 495
    .local v9, "xml":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mProject:Lcom/everis/jibo/persistence/Project;

    if-eqz v0, :cond_0

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const/16 v10, 0x17

    move-wide v4, v1

    move-object v8, v3

    move-object v11, v3

    invoke-static/range {v0 .. v11}, Lcom/everis/jibo/persistence/Project;->copy$default(Lcom/everis/jibo/persistence/Project;JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/everis/jibo/persistence/Project;

    move-result-object v3

    :cond_0
    iput-object v3, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mProject:Lcom/everis/jibo/persistence/Project;

    .line 496
    sget-object v0, Lcom/everis/jibo/beamaker/utils/BAMLogger;->INSTANCE:Lcom/everis/jibo/beamaker/utils/BAMLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BEFORE UPDATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mProject:Lcom/everis/jibo/persistence/Project;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/utils/BAMLogger;->showDevLog(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mUpdatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;

    iget-object v1, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mProject:Lcom/everis/jibo/persistence/Project;

    if-nez v1, :cond_2

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.everis.jibo.persistence.Project"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    .end local v9    # "xml":Ljava/lang/String;
    :cond_1
    const-string v9, ""

    goto :goto_0

    .line 497
    .restart local v9    # "xml":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;->setMProject(Lcom/everis/jibo/persistence/Project;)V

    .line 498
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mUpdatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;

    invoke-virtual {v0}, Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;->run()V

    .line 500
    .end local v9    # "xml":Ljava/lang/String;
    .end local v12    # "commandHandlerModel":Lcom/everis/jibo/beamaker/domain/CommandHandlerModel;
    :cond_3
    iput-boolean v13, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->executingFromXML:Z

    .line 501
    return-void
.end method

.method public updateProject(Lcom/everis/jibo/beamaker/data/ProjectEntity;)V
    .locals 2
    .param p1, "project"    # Lcom/everis/jibo/beamaker/data/ProjectEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "project"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->fromSaveButton:Z

    .line 197
    iget-object v0, p0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;->mUpdatingProjectUseCase:Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;

    sget-object v1, Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;->INSTANCE:Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;

    invoke-virtual {v1, p1}, Lcom/everis/jibo/beamaker/data/mappers/ProjectMapper;->fromParcelableProject(Lcom/everis/jibo/beamaker/data/ProjectEntity;)Lcom/everis/jibo/persistence/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/everis/jibo/beamaker/usecase/UpdatingProjectUseCase;->setMProject(Lcom/everis/jibo/persistence/Project;)V

    .line 199
    new-instance v1, Ljava/lang/Thread;

    new-instance v0, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$updateProject$1;

    invoke-direct {v0, p0}, Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl$updateProject$1;-><init>(Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenterImpl;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 201
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 202
    return-void
.end method
