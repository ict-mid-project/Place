$(function(){
	  // ⭐ 탭 버튼 이벤트

	  document.querySelectorAll('.tab-btn').forEach(btn => {
	    btn.addEventListener('click', () => {
	      const target = btn.dataset.tab;
	      document.querySelectorAll('.tab-btn').forEach(b => b.classList.remove('active', 'text-primary', 'border-primary'));
	      btn.classList.add('active', 'text-primary', 'border-primary');
	      document.querySelectorAll('.tab-content').forEach(tc => tc.classList.add('hidden'));
	      document.getElementById(`tab-${target}`).classList.remove('hidden');
	    });
	  });
	  
	  $("#14").click(function(){
		 console.log($(this).text()); 
	  });
});